package csu.edu.platform.service.Impl;

import com.aliyun.oss.OSS;
import com.aliyun.oss.model.PutObjectResult;
import csu.edu.platform.service.OssService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Path;
import java.util.UUID;

@Service("ossService")
public class OssServiceImpl implements OssService {

    @Autowired
    private OSS ossClient;
    @Autowired
    private ApplicationContext applicationContext;

    @Value("${aliyun.oss.bucketName}")
    private String bucketName;
    @Value("${aliyun.oss.endpoint}")
    private String endpoint;

    public String uploadFile(MultipartFile file, String fileName){
        if (!file.isEmpty()) {
            File tempFile = null;
            try {
                // 获取文件扩展名并创建对象名称
                String extension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf('.'));
                String objectName = fileName + extension;

                // 创建临时文件
                tempFile = File.createTempFile("upload_", objectName);
                file.transferTo(tempFile);

                // 上传文件到 OSS 并获取 URL
                PutObjectResult result = ossClient.putObject(bucketName, objectName, tempFile);
                return "https://" + bucketName + "." + endpoint.split("//")[1] + "/" + objectName;
            } catch (Exception e) {
                System.out.println("Error uploading image: " + e.getMessage());
                return null;
            } finally {
                // 删除临时文件
                if (tempFile != null && tempFile.exists()) {
                    tempFile.delete();
                }
            }
        }
        return null;
    }

    public Boolean deleteFile(String fileUrl) {
        try {
            // 解析文件URL以获取bucket名称和文件名
            String bucketName = fileUrl.split("\\.")[0].substring(8);  // 从"https://"之后取子字符串
            String objectName = fileUrl.substring(fileUrl.indexOf("/", 8) + 1);

            // 删除文件
            ossClient.deleteObject(bucketName, objectName);
            return true;
        } catch (Exception e) {
            System.out.println("Error deleting file: " + e.getMessage());
            return false;
        }
    }

    /**
     * 更新文件，并调用相应的服务方法更新数据库记录
     *
     * @param serviceClass  服务类的Class对象
     * @param id            实体记录的ID
     * @param file          上传的文件
     * @param fileName      文件名
     * @return              新文件的URL，如果更新失败返回null
     */
    public String updateFile(Class<?> serviceClass, Integer id, MultipartFile file, String fileName) {
        try {
            // 从Spring容器中获取服务实例
            Object serviceInstance = applicationContext.getBean(serviceClass);

            // 获取用于获取旧图片URL的方法
            Method getImageUrlMethod = serviceClass.getMethod("getImageUrl", Integer.class);
            // 获取用于设置新图片URL的方法
            Method setImageUrlMethod = serviceClass.getMethod("setImageUrl", Integer.class, String.class);
            // 获取旧图片URL
            String oldUrl = (String) getImageUrlMethod.invoke(serviceInstance, id);

            // 上传新文件并获取新URL
            String newUrl = this.uploadFile(file, fileName);
            // 更新实体记录
            if ((Boolean) setImageUrlMethod.invoke(serviceInstance, id, newUrl)){
                // 删除旧文件
                this.deleteFile(oldUrl);
                return newUrl;
            } else {
                return null;
            }

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public  String uploadFileFromUrl(String imageUrl){
        try {
            // 从 URL 中打开输入流
            URL url = new URL(imageUrl);
            InputStream inputStream = url.openStream();
            String path = url.getPath();
            Path filePath = Path.of(path);
            String fileName = filePath.getFileName().toString();

            // 获取文件名（包括路径）中的最后一个 '.' 的位置
            int dotIndex = fileName.lastIndexOf('.');

            String extension = "";
            // 如果找到了点，并且点后面有字符
            if (dotIndex > 0 && dotIndex < fileName.length() - 1) {
                // 获取拓展名
                extension = fileName.substring(dotIndex + 1);
            }
            String totalFileName = "article/" + UUID.randomUUID().toString() + "." + extension;

            // 上传文件流到 OSS
            ossClient.putObject(bucketName, totalFileName, inputStream);

            String uploadedUrl = "https://" + bucketName + "." + endpoint.split("//")[1] + "/" + totalFileName;
            // 生成上传后的文件访问 URL

            inputStream.close();

            return uploadedUrl;
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            // 关闭 OSS 客户端
            ossClient.shutdown();
        }
    }
}