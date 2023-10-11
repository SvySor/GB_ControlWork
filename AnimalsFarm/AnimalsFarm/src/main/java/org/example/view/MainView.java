package org.example.view;

import org.example.model.Animal;
import org.example.model.AnimalCommand;
import org.example.model.AnimalDTO;
import org.example.model.AnimalType;

import java.util.*;

public class MainView {
    public static Scanner scanner = new Scanner(System.in);

    public void mainMenu(){
        System.out.println("Animal Farm Catalogue");
        System.out.println();
        System.out.println("Select operation:");
        System.out.println("1 - Input new animal");
        System.out.println("2 - Redefine (Show) animal class");
        System.out.println("3 - Show animal commands");
        System.out.println("4 - Add animal commands");
        System.out.println("0 - Exit program");
    }

    public AnimalDTO addNewAnimal(){
        AnimalDTO newAnimal = new AnimalDTO();
        System.out.println("New animal input");
        System.out.print("Input animal name: ");
        newAnimal.setAnimalName(scanner.nextLine());
        System.out.println("Select animal commands:");
        System.out.println(Arrays.toString(AnimalCommand.values()));
        System.out.print("Input commands with ',' ad divider: ");
        String animalcommandsString = scanner.nextLine();
        String[] commandsArray = animalcommandsString.split(",");
        List<AnimalCommand> commandsList = new ArrayList<>();
        for (String currentCommand: commandsArray) {
            commandsList.add(AnimalCommand.valueOf(currentCommand));
        }







        newAnimal.setAnimalCommands(Arrays.asList(commandsArray));
        System.out.println();
        System.out.print("Input animal birthday (DD-MM-YYYY): ");
        System.out.println();
        System.out.println("Select animal type: ");
        System.out.println();
        return newanimal;
    }
}