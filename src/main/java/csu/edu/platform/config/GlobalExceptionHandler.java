package csu.edu.platform.config;

import csu.edu.platform.util.ResponseUtil;
import csu.edu.platform.util.TimeUtil;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

// 全局异常处理
@RestControllerAdvice
public class GlobalExceptionHandler {
    @ResponseBody
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(Exception.class)
    public ResponseEntity<Object>handleException(Exception e) {
        System.out.println("当前时间" + TimeUtil.getNow());
        System.out.println(e.getMessage());
        return ResponseUtil.error(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
    }
}