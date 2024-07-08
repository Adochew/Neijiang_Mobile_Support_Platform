package csu.edu.platform.model;

import lombok.Data;

@Data
public class Message {
    private Integer from;
    private String content;
    private Integer group;
    private Integer to;
}