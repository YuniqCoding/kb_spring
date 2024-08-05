package org.scoula.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * AnimalDTO 클래스는 동물의 정보를 나타내는 데이터 전송 객체입니다.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AnimalDTO {
    private String name;
    private String species;  // 예: 개, 고양이
    private int age;
}