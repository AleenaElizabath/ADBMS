class base{
    base(){
        System.out.println("This is base class default constructor");
    }
    void display(){
        System.out.println("This is base class display function");
    }
}
class C extends base{
    int x;
    C(){
        System.out.println("This is child default constructor ");
    }
    void display(int m){
        x=m;
        System.out.println(x);
    }
    public static void main(String[] args){
        C obj = new C();
        obj.display(3);
        obj.display();
    }
}