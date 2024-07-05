package csu.edu.platform.service;

import java.util.Map;

public abstract interface MapService {
    Map<String, String> getLocationFromCoordinates(String longitude, String latitude);
    String getLonAndLatByAddress(String address);
}
