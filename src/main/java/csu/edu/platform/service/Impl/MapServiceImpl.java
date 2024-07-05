package csu.edu.platform.service.Impl;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson.JSONObject;
import csu.edu.platform.service.MapService;
import org.springframework.stereotype.Service;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;

@Service("mapService")
public class MapServiceImpl implements MapService {
    public  Map<String, String> getLocationFromCoordinates(String longitude, String latitude) {
        // https://lbs.amap.com/api/webservice/summary(逆地理编码)
        String apiKey = "d47fd475d02fa9afb96305b43a0fa7b6";  // 请替换成您的高德地图API密钥
        String url = "https://restapi.amap.com/v3/geocode/regeo?key=" + apiKey + "&location=" + longitude + "," + latitude;
        HttpURLConnection connection = null;
        try {
            connection = (HttpURLConnection) new URL(url).openConnection();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        try {
            connection.setRequestMethod("GET");
        } catch (ProtocolException e) {
            throw new RuntimeException(e);
        }
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        String line;
        StringBuilder response = new StringBuilder();
        while (true) {
            try {
                if (!((line = reader.readLine()) != null)) break;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            response.append(line);
        }
        try {
            reader.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        JSONObject jsonObject = JSONObject.parseObject(response.toString());
        JSONObject regeocode = jsonObject.getJSONObject("regeocode");
        JSONObject addressComponent = regeocode.getJSONObject("addressComponent");

        // 封装地址信息到Map中
        Map<String, String> addressMap = new HashMap<>();
        addressMap.put("province", addressComponent.getString("province"));
        addressMap.put("city", addressComponent.getString("city"));
        addressMap.put("district", addressComponent.getString("district"));
        addressMap.put("township", addressComponent.getString("township"));
        addressMap.put("street", addressComponent.getJSONObject("streetNumber").getString("street"));
        addressMap.put("streetNumber", addressComponent.getJSONObject("streetNumber").getString("number"));
        return addressMap;
    }
    public String getLonAndLatByAddress(String address){
        String KEY="d47fd475d02fa9afb96305b43a0fa7b6";
        String GD_URL="https://restapi.amap.com/v3/geocode/geo?address=%s&key=%s";
        String location="";
        GD_URL = java.lang.String.format(GD_URL, address, KEY);
        //高德接口返回的是JSON格式的字符串
        String queryResult = getResponse(GD_URL);
        JSONObject obj = JSONObject.parseObject(queryResult);
        if(java.lang.String.valueOf(obj.get("status")).equals("1")){
            JSONObject jobJSON = JSONObject.parseObject(obj.get("geocodes").toString().substring(1, obj.get("geocodes").toString().length() - 1));
            location = java.lang.String.valueOf(jobJSON.get("location"));
        }else{
            throw new RuntimeException("地址转换经纬度失败，错误码：" + obj.get("infocode"));
        }
        return location;
    }
    private static String getResponse(String serverUrl) {
        // 用JAVA发起http请求，并返回json格式的结果
        StringBuffer result = new StringBuffer();
        try {
            URL url = new URL(serverUrl);
            URLConnection conn = url.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result.append(line);
            }
            in.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result.toString();
    }

}
