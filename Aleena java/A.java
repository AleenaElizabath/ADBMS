import java.util.*;
public class A {
    static int c;
    static void count(){
        c++;
    }
    static void display(){
        System.out.println(c);
    }
}
public class Maincls {
    public static void main(String[] args) {
        A.c=0;
        A.count();
        A.display();
    }
}
