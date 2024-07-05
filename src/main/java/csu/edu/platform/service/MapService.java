package csu.edu.platform.service;

public abstract interface MapService {
    String  getLocationFromCoordinates(String longitude, String latitude);
    String getLonAndLatByAddress(String address);
}
