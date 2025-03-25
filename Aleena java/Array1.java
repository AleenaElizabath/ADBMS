import java.util.*;
class Array1{
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        System.out.println("Enter the size:");
        int n=s.nextInt();  
        int Arr1[]=new int[n];
        System.out.println("Enter the elements:");
        for(int i=0;i<n;i++){
            int num=s.nextInt();
            Arr1[i]=num;
        } 
        System.out.println("Printing elements:");
        for(int i=0;i<n;i++){
            System.out.println(Arr1[i]);
        } 
        //s.close();
        System.out.println("Length of the array:"+Arr1.length);
    }
}
