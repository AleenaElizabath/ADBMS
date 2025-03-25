class Parent {
    Parent(){
        System.out.println("This is the parent class");
    }
}
class Children extends Parent{
    Children(){
        System.out.println("This is the child class");
    }
    public static void main(String[] args) {
        Children obj=new Children();
    }
}
