package csu.edu.platform.interceptor;

import csu.edu.platform.annotation.RoleRequired;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import java.io.IOException;
import java.util.Arrays;

@Component
public class RoleInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        if (handler instanceof HandlerMethod) {
            HandlerMethod handlerMethod = (HandlerMethod) handler;
            RoleRequired roleRequired = handlerMethod.getMethodAnnotation(RoleRequired.class);
            if (roleRequired != null) {
                Integer roleId = (Integer) request.getAttribute("roleId");
                if (roleId == null || !Arrays.stream(roleRequired.value()).anyMatch(id -> id == roleId)) {
                    sendErrorResponse(response, "Insufficient permissions.", HttpStatus.FORBIDDEN);
                    return false;
                }
            }
        }
        return true;
    }

    private void sendErrorResponse(HttpServletResponse response, String message, HttpStatus status) throws IOException {
        response.setStatus(status.value());
        response.setContentType("application/json;charset=UTF-8");
        String jsonResponse = "{\"status\":\"error\", \"message\":\"" + message + "\"}";
        response.getWriter().write(jsonResponse);
    }
}
