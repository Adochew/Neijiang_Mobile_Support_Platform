package csu.edu.platform.controller;

import csu.edu.platform.service.WeatherForecastService;
import csu.edu.platform.util.ResponseUtil;
import csu.edu.platform.util.WeatherDataExtractorUtil;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/weather")
public class WeatherController {
    @Autowired
    private WeatherForecastService weatherForecastService;

    @GetMapping("/forecast")
    @Operation(summary = "地址转天气", description = "地址转详细天气")
    @Parameter(name = "location", example = "天心区")
    @ApiResponse(responseCode = "200", description = "成功返回", content = @Content(schema = @Schema(example = getWeatherByLocationJson)))
    public ResponseEntity<Object> getWeatherByLocation(@RequestParam String location) {
        try {
            String weatherInfo = weatherForecastService.getWeatherByName(location);
            return ResponseUtil.success(WeatherDataExtractorUtil.extractFields(weatherInfo));
        } catch (Exception e) {
            return ResponseUtil.error("Failed to get weather info", e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    private static final String getWeatherByLocationJson =
            """
                    {
                      "message": "{\\"cityid\\":\\"101250108\\",\\"date\\":\\"2024-07-05\\",\\"week\\":\\"星期五\\",\\"update_time\\":\\"20:39\\",\\"city\\":\\"天心\\",\\"cityEn\\":\\"tianxin\\",\\"country\\":\\"中国\\",\\"countryEn\\":\\"China\\",\\"wea\\":\\"晴\\",\\"wea_img\\":\\"qing\\",\\"tem\\":\\"31.5\\",\\"tem1\\":\\"34\\",\\"tem2\\":\\"27\\",\\"win\\":\\"东南风\\",\\"win_speed\\":\\"3级\\",\\"win_meter\\":\\"14km\\\\/h\\",\\"humidity\\":\\"63%\\",\\"visibility\\":\\"20km\\",\\"pressure\\":\\"991\\",\\"air\\":\\"25\\",\\"air_pm25\\":\\"25\\",\\"air_level\\":\\"优\\",\\"air_tips\\":\\"各类人群可多参加户外活动，多呼吸一下清新的空气。\\",\\"alarm\\":[{\\"alarm_type\\":\\"高温\\",\\"alarm_level\\":\\"黄色\\",\\"alarm_title\\":\\"湖南省发布高温黄色预警\\",\\"alarm_content\\":\\"湖南省气象台2024年7月5日15时44分发布高温黄色预警：预计5日20时至6日20时，湘东、湘北大部分地区有35℃以上高温，局部地区将达37℃以上，请做好防范。黄色预警区域：长沙、株洲、湘潭、常德大部分地区、益阳大部分地区、岳阳大部分地区、怀化北部、娄底东部、衡阳、永州东部、郴州大部分地区。（预警信息来源：国家预警信息发布中心）\\"}],\\"rain_pcpn\\":\\"0\\",\\"uvIndex\\":\\"6\\",\\"uvDescription\\":\\"强\\",\\"wea_day\\":\\"阴\\",\\"wea_day_img\\":\\"yin\\",\\"wea_night\\":\\"晴\\",\\"wea_night_img\\":\\"qing\\",\\"sunrise\\":\\"05:36\\",\\"sunset\\":\\"19:28\\",\\"hours\\":[{\\"hours\\":\\"19:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"33\\",\\"win\\":\\"东南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"28\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"20:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"32\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"48\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"21:00\\",\\"wea\\":\\"晴\\",\\"wea_img\\":\\"qing\\",\\"tem\\":\\"31\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"49\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"22:00\\",\\"wea\\":\\"晴\\",\\"wea_img\\":\\"qing\\",\\"tem\\":\\"30\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"48\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"23:00\\",\\"wea\\":\\"晴\\",\\"wea_img\\":\\"qing\\",\\"tem\\":\\"30\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"47\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"00:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"29\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"15.9\\",\\"aqinum\\":\\"45\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"01:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"28\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"13.33\\",\\"aqinum\\":\\"42\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"02:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"28\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"2级\\",\\"vis\\":\\"11.34\\",\\"aqinum\\":\\"41\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"03:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"27\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"2级\\",\\"vis\\":\\"10.3\\",\\"aqinum\\":\\"49\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"04:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"27\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"9.87\\",\\"aqinum\\":\\"43\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"05:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"26\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"2级\\",\\"vis\\":\\"9.53\\",\\"aqinum\\":\\"43\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"06:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"27\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"2级\\",\\"vis\\":\\"8.87\\",\\"aqinum\\":\\"38\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"07:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"28\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"2级\\",\\"vis\\":\\"9.58\\",\\"aqinum\\":\\"37\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"08:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"28\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"13.17\\",\\"aqinum\\":\\"35\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"09:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"29\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"20.02\\",\\"aqinum\\":\\"40\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"10:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"31\\",\\"win\\":\\"西南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"39\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"11:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"32\\",\\"win\\":\\"西南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"45\\",\\"aqi\\":\\"优\\"},{\\"hours\\":\\"12:00\\",\\"wea\\":\\"晴\\",\\"wea_img\\":\\"qing\\",\\"tem\\":\\"32\\",\\"win\\":\\"西南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"60\\",\\"aqi\\":\\"良\\"},{\\"hours\\":\\"13:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"33\\",\\"win\\":\\"西南风\\",\\"win_speed\\":\\"4级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"88\\",\\"aqi\\":\\"良\\"},{\\"hours\\":\\"14:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"33\\",\\"win\\":\\"西南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"68\\",\\"aqi\\":\\"良\\"},{\\"hours\\":\\"15:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"33\\",\\"win\\":\\"西南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"77\\",\\"aqi\\":\\"良\\"},{\\"hours\\":\\"16:00\\",\\"wea\\":\\"阴\\",\\"wea_img\\":\\"yin\\",\\"tem\\":\\"33\\",\\"win\\":\\"西南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"100\\",\\"aqi\\":\\"良\\"},{\\"hours\\":\\"17:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"33\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"108\\",\\"aqi\\":\\"轻度污染\\"},{\\"hours\\":\\"18:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"32\\",\\"win\\":\\"东南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"113\\",\\"aqi\\":\\"轻度污染\\"},{\\"hours\\":\\"19:00\\",\\"wea\\":\\"晴\\",\\"wea_img\\":\\"qing\\",\\"tem\\":\\"31\\",\\"win\\":\\"东南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"113\\",\\"aqi\\":\\"轻度污染\\"},{\\"hours\\":\\"20:00\\",\\"wea\\":\\"晴\\",\\"wea_img\\":\\"qing\\",\\"tem\\":\\"30\\",\\"win\\":\\"东南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"108\\",\\"aqi\\":\\"轻度污染\\"},{\\"hours\\":\\"21:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"30\\",\\"win\\":\\"南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"104\\",\\"aqi\\":\\"轻度污染\\"},{\\"hours\\":\\"22:00\\",\\"wea\\":\\"多云\\",\\"wea_img\\":\\"yun\\",\\"tem\\":\\"29\\",\\"win\\":\\"东南风\\",\\"win_speed\\":\\"3级\\",\\"vis\\":\\"21.3\\",\\"aqinum\\":\\"97\\",\\"aqi\\":\\"良\\"}],\\"nums\\":10}",
                      "status": "success"
                    }
            """;
}
