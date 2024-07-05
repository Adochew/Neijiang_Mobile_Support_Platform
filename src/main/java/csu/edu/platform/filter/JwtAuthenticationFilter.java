package csu.edu.platform.filter;

import com.alibaba.fastjson.JSONObject;

import csu.edu.platform.util.JWTUtil;
import csu.edu.platform.util.ResponseUtil;
import io.jsonwebtoken.Claims;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebFilter(urlPatterns = "/*")
public class JwtAuthenticationFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURL().toString();

//        if (url.contains("no-jwt")){
//            filterChain.doFilter(servletRequest,servletResponse);
//            return;
//        }

        String jwt = request.getHeader("token");
        if (jwt == null || jwt.isEmpty()) {
            sendErrorResponse(response, "UNAUTHORIZED", HttpStatus.UNAUTHORIZED);
            return;
        }

        Claims claims = JWTUtil.parseJWT(jwt);
        if (claims == null) {
            sendErrorResponse(response, "UNAUTHORIZED", HttpStatus.UNAUTHORIZED);
            return;
        }

//        String username = (String) claims.get("username");
//        servletRequest.setAttribute("username", username);
//        filterChain.doFilter(servletRequest, servletResponse);
    }

    private void sendErrorResponse(HttpServletResponse response, String message, HttpStatus status) throws IOException {
        ResponseEntity<Object> responseEntity = ResponseUtil.error(message, status);
        response.setStatus(status.value());
        response.setContentType("application/json;charset=UTF-8");
        response.getWriter().write(JSONObject.toJSONString(responseEntity.getBody()));
    }
}
