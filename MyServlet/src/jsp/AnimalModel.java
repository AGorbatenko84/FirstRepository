package jsp;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public class AnimalModel {

    private int number;
    private Map<Integer, Animal> animals = new HashMap<>();
    {   for (int i=0; i<10; i++){
            if (i%2==0){
                Dog dog = new Dog();
                dog.setName("Archi-" + (i+1));
                dog.setAge((int) (Math.random()*10));
                dog.setWeight((int) (Math.random()*50)+1);
                animals.put(i, dog);
            } else {
                Cat cat = new Cat();
                cat.setName("Murzik-" + (i+1));
                cat.setAge((int) (Math.random()*10));
                cat.setWeight((int) (Math.random()*10)+1);
                animals.put(i, cat);
            }
        }
    }

    public Animal getAnimal(int number){
        if (number==0) return null;
        int num = number-1;
        return animals.get(num);
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }
}
