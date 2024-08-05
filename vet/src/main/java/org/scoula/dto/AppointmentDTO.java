package org.scoula.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Data;

/**
 * AppointmentDTO 클래스는 예약 정보를 나타내는 데이터 전송 객체입니다.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AppointmentDTO {
    private String ownerName;
    private String animalName;

    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date appointmentDate;

    private String reason;  // 예약 이유
}