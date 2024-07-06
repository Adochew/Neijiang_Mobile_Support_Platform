package csu.edu.platform.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import io.swagger.v3.oas.models.security.SecurityScheme;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SwaggerConfig {
    @Bean
    public OpenAPI swaggerOpenApi() {
        return new OpenAPI()
                .info(new Info().title("后台测试")
                        .description("swagger")
                        .version("v1.0.0"))
                .addSecurityItem(new SecurityRequirement().addList("TokenAuth"))
                .components(new io.swagger.v3.oas.models.Components()
                        .addSecuritySchemes("TokenAuth",
                                new SecurityScheme()
                                        .type(SecurityScheme.Type.APIKEY)
                                        .name("token")
                                        .in(SecurityScheme.In.HEADER)));
    }
}

