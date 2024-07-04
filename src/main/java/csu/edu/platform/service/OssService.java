package csu.edu.platform.service;

import org.springframework.web.multipart.MultipartFile;

public interface OssService {
    String uploadFile(MultipartFile file, String fileName);
    boolean deleteFile(String fileUrl);
}
