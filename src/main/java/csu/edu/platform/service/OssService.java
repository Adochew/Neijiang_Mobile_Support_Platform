package csu.edu.platform.service;

import org.springframework.web.multipart.MultipartFile;

public interface OssService {
    String uploadFile(MultipartFile file, String fileName);
    Boolean deleteFile(String fileUrl);
    String updateFile(Class<?> serviceClass, Integer id, MultipartFile file, String fileName);
}
