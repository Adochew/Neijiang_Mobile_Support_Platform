package csu.edu.platform.service.Impl;

import com.aliyun.oss.OSS;
import com.aliyun.oss.model.PutObjectResult;
import csu.edu.platform.service.OssService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Service("ossService")
public class OssServiceImpl implements OssService {

    @Autowired
    private OSS ossClient;
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

    public boolean deleteFile(String fileUrl) {
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
}