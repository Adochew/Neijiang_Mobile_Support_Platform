package csu.edu.platform.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class WeatherDataExtractorUtil {

    private static final ObjectMapper objectMapper = new ObjectMapper();

    public static String extractDataAsJson(String jsonString) throws JsonProcessingException {
        JsonNode rootNode = objectMapper.readTree(jsonString);
        JsonNode hoursNode = rootNode.path("hours");

        ArrayNode hoursArray = objectMapper.createArrayNode();
        ArrayNode weaArray = objectMapper.createArrayNode();
        ArrayNode temArray = objectMapper.createArrayNode();

        if (hoursNode.isArray()) {
            for (JsonNode hourNode : hoursNode) {
                hoursArray.add(hourNode.path("hours").asText());
                weaArray.add(hourNode.path("wea").asText());
                temArray.add(hourNode.path("tem").asText());
            }
        }

        ObjectNode resultNode = objectMapper.createObjectNode();
        resultNode.set("hours", hoursArray);
        resultNode.set("wea", weaArray);
        resultNode.set("tem", temArray);

        return objectMapper.writeValueAsString(resultNode);
    }
}