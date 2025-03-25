class A{
    final int a;
    void change(){
        a=100;
        System.out.println(a);
    }
    public static void main(String args[]){
        A obj = new A();
        obj.change();
    }
}