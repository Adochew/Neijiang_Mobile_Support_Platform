package csu.edu.platform.controller;

import csu.edu.platform.service.AccountService;
import csu.edu.platform.service.MapService;
import csu.edu.platform.util.ResponseUtil;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.parameters.RequestBody;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/location")
public class LocationController {
    @Autowired
    private MapService mapService;

    //经度 longitude
    //纬度 latitude
    @GetMapping("/coordinates")
    @Operation(summary = "经纬转地址", description = "经纬度转省县区街信息")
    @ApiResponse(responseCode = "200", description = "成功返回",
            content = @Content(mediaType = "application/json", schema = @Schema(example = getLocationFromCoordinatesJson)))
    @Parameter(name = "longitude", description = "经度", example = "112.9389")
    @Parameter(name = "latitude", description = "纬度", example = "28.2278")
    public ResponseEntity<Object> getLocationFromCoordinates(
            @RequestParam String longitude,
            @RequestParam String latitude) {
        try {
            Map<String, String> location = mapService.getLocationFromCoordinates(longitude, latitude);
            return ResponseUtil.success(location);
        } catch (Exception e) {
            return ResponseUtil.error("Failed to get location", e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/address")
    @Operation(summary = "地址转经纬", description = "一个地址转经纬度")
    @ApiResponse(responseCode = "200", description = "成功返回",
            content = @Content(mediaType = "application/json", schema = @Schema(example = getCoordinatesFromAddressJson)))
    @ApiResponse(responseCode = "500", description = "错误返回",
            content = @Content(mediaType = "application/json", schema = @Schema(example = getCoordinatesFromAddress500Json)))
    @Parameter(name = "address", example = "长沙市天心区")
    public ResponseEntity<Object> getCoordinatesFromAddress(@RequestParam String address) {
        try {
            String coordinates = mapService.getLonAndLatByAddress(address);
            return ResponseUtil.success(coordinates);
        } catch (Exception e) {
            return ResponseUtil.error("Failed to get coordinates", e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    private static final String getLocationFromCoordinatesJson =
            """
                    {
                      "data": {
                        "province": "湖南省",
                        "city": "长沙市",
                        "streetNumber": "243号",
                        "street": "岳麓大道",
                        "district": "岳麓区",
                        "township": "银盆岭街道"
                      },
                      "status": "success"
                    }
            """;


    private static final String  getCoordinatesFromAddressJson =
            """
            {
                    "message":"112.989780,28.114544",
                    "status":"success"
            }
            """;

    private static final String  getCoordinatesFromAddress500Json =
            """
            {
                    "data": "地址转换经纬度失败，错误码：30001",
                    "message": "Failed to get coordinates",
                    "status": "error"
            }
            """;
}