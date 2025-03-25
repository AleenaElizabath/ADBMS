class A{
    int x,y;
    A(int a ,int b){
        x=a;
        y=b;
    }
    void display(){
        System.out.println("The value of x is " +x+ " and value of y is " +y);
    }
}
class B extends A{
    int z;
    B(int m,int n, int p){
        super(m,n);
        z=p;
        System.out.println(z);
    }
    void display(){
        super.display();
        System.out.println("This is derived class display function");
    }
    public static void main(String[] args){
        B obj = new B(5,6,7);
        obj.display();
        
    }
}