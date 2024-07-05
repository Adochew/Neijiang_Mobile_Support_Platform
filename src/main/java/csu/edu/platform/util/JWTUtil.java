package csu.edu.platform.util;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.util.Date;
import java.util.Map;

public class JWTUtil {
    private static final String secretKey = "csu.edu.cn";

    private static final Long expire = 1000L * 60 * 60 * 10;

    public static String generateJwt(Map<String, Object> claims){
        String jwt = Jwts.builder()
                .signWith(SignatureAlgorithm.HS256, secretKey)
                .addClaims(claims)
                .setExpiration(new Date(System.currentTimeMillis() + expire))
                .compact();
        return jwt;
    }

    public static Claims parseJWT(String jwt){
        try {
            Claims claims = Jwts.parser()
                    .setSigningKey(secretKey)
                    .parseClaimsJws(jwt)
                    .getBody();
            return claims;
        } catch (ExpiredJwtException e){
            return null;
        }
    }
}
