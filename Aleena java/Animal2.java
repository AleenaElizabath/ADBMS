import java.util.*;
class Animal{
    String color="white";
}
class Animal2 extends Animal{
    String color="red";
    void clrdisplay(){
        System.out.println("The color is "+color);
        System.out.println("The color of super class "+super.color);
    }
    public static void main(String[] args) {
        Animal2 obj=new Animal2();
        obj.clrdisplay();
    }
}