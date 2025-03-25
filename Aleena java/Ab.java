class Ab{
    void display(){
 System.out.println("hi");
}}
class B{
    void display(){
        System.out.println("Hello");
    }
}
class C extends B extends A{
    public static void main(String args[]){
        C obj=new C();
        C.display();
    }
}