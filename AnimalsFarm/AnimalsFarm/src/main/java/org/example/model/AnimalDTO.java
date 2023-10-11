package org.example.model;

import lombok.Data;

import java.util.GregorianCalendar;
import java.util.List;

@Data
public class AnimalDTO {
    private String animalName;
    private List<AnimalCommand> animalCommands;
    private GregorianCalendar animalBirthday;
    private AnimalType animalType;
}
