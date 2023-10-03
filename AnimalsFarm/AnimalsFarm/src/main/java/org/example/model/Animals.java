package org.example.model;

import lombok.Data;

import java.util.GregorianCalendar;

@Data
public class Animals {
    private Integer animalID;
    private String animalName;
    private AnimalCommand animalCommand;
    private GregorianCalendar animalBirthday;
    private AnimalType animalType;

}
