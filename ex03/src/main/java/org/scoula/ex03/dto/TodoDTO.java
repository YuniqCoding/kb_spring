package org.scoula.ex03.dto;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class TodoDTO {
    private String title;

//    날짜 형식을 해당 포맷으로 지정해줌
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date dueDate;
}
