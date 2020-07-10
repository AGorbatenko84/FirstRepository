package jsp;

public class TempAnimal {
    private String id;
    private String type;
    private int numberInBase;
    private Animal animal;

    public Animal getAnimal() {
        return animal;
    }

    public void setAnimal(Animal animal) {
        this.animal = animal;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getNumberInBase() {
        return numberInBase;
    }

    public void setNumberInBase(int numberInBase) {
        this.numberInBase = numberInBase;
    }
}
