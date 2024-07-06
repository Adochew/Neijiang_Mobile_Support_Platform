package csu.edu.platform.service.Impl;

import csu.edu.platform.service.MapService;
import csu.edu.platform.service.WeatherForecastService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

@Service("weatherForecastService")
public class WeatherForecastServiceImpl implements WeatherForecastService {
  @Autowired
   private MapService mapService;
    public String getWeatherByName(String name) {
        String urlString = "https://v1.yiketianqi.com/free/v2030?appid=46714281&appsecret=w1ktIvpt&lng=#1&lat=#2&hours=1";
        String lngAndLat = mapService.getLonAndLatByAddress(name);
        try {
            System.out.println(lngAndLat);
            String[] parts = lngAndLat.split(",");
            urlString = urlString.replace("#1", parts[0]);
            urlString = urlString.replace("#2", parts[1]);
            // 创建URL对象
            URL url = new URL(urlString);
            // 打开连接
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            // 设置请求方法为GET
            connection.setRequestMethod("GET");
            // 获取响应码
            int responseCode = connection.getResponseCode();
            System.out.println("Response Code: " + responseCode);
            // 读取响应
            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String inputLine;
            StringBuilder response = new StringBuilder();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();
            // 打印响应内容
            return response.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
