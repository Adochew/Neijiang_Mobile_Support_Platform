package csu.edu.platform.util;

import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;

import java.util.HashMap;
import java.util.Map;

public class ResponseUtil {

    public static ResponseEntity<Object> success() {
        Map<String, Object> response = new HashMap<>();
        response.put("status", "success");
        response.put("message", "Operation successful");
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    public static ResponseEntity<Object> success(String message) {
        Map<String, Object> response = new HashMap<>();
        response.put("status", "success");
        response.put("message", message);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    public static ResponseEntity<Object> success(Object data) {
        Map<String, Object> response = new HashMap<>();
        response.put("status", "success");
        response.put("data", data);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    public static ResponseEntity<Object> success(String message, Object data) {
        Map<String, Object> response = new HashMap<>();
        response.put("status", "success");
        response.put("message", message);
        response.put("data", data);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    public static ResponseEntity<Object> error() {
        Map<String, Object> response = new HashMap<>();
        response.put("status", "error");
        response.put("message", "Operation failed");
        return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public static ResponseEntity<Object> error(String message) {
        Map<String, Object> response = new HashMap<>();
        response.put("status", "error");
        response.put("message", message);
        return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public static ResponseEntity<Object> error(String message, HttpStatus status) {
        Map<String, Object> response = new HashMap<>();
        response.put("status", "error");
        response.put("message", message);
        return new ResponseEntity<>(response, status);
    }

    public static ResponseEntity<Object> error(String message, Object data, HttpStatus status) {
        Map<String, Object> response = new HashMap<>();
        response.put("status", "error");
        response.put("message", message);
        response.put("data", data);
        return new ResponseEntity<>(response, status);
    }
}
