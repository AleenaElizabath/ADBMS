public class Parents {
    Parents(){
        System.out.println("This is the parent class");
    }
}
class Child extends Parents{
    Child(){
        System.out.println("This is the child class");
    }
    public static void main(String[] args) {
        Child obj=new Child();
    }
}
