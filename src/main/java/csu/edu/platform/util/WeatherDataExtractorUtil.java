package csu.edu.platform.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class WeatherDataExtractorUtil {

    public static JSONObject extractFields(String jsonString) {
        JSONObject jsonObject = JSON.parseObject(jsonString);

        JSONObject result = new JSONObject();
        result.put("date", jsonObject.getString("date"));
        result.put("week", jsonObject.getString("week"));
        result.put("city", jsonObject.getString("city"));
        result.put("wea", jsonObject.getString("wea"));
        result.put("tem", jsonObject.getDouble("tem").intValue()); // Convert to integer
        result.put("tem1", jsonObject.getDouble("tem1").intValue()); // Convert to integer
        result.put("tem2", jsonObject.getDouble("tem2").intValue()); // Convert to integer
        result.put("win", jsonObject.getString("win"));
        result.put("win_speed", jsonObject.getString("win_speed"));
        result.put("humidity", jsonObject.getString("humidity"));
        result.put("visibility", jsonObject.getString("visibility"));
        result.put("pressure", jsonObject.getString("pressure"));
        result.put("air_level", jsonObject.getString("air_level"));
        result.put("air_tips", jsonObject.getString("air_tips"));

        JSONArray hoursArray = jsonObject.getJSONArray("hours");
        List<String> hoursList = new ArrayList<>();
        List<String> weaList = new ArrayList<>();
        List<Integer> temList = new ArrayList<>();

        for (int i = 0; i < hoursArray.size(); i++) {
            JSONObject hourObject = hoursArray.getJSONObject(i);
            hoursList.add(hourObject.getString("hours"));
            weaList.add(hourObject.getString("wea"));
            temList.add(hourObject.getDouble("tem").intValue()); // Convert to integer
        }

        result.put("hours", hoursList);
        result.put("weas", weaList);
        result.put("tems", temList);

        return result;
    }
}