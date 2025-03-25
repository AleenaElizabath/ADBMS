//Sort an Array
import java.util.*;
class Arraysort {
    public static void main(String[] args) {
        System.out.println("Enter the length of the array:");
        Scanner s=new Scanner(System.in);
        int len=s.nextInt(); 
        int arr1[]=new int[len];
        //int arr2[]=new int[len];
        System.out.println("Enter the elements of the array:");
        for(int i=0;i<len;i++){
            int val=s.nextInt(); 
            arr1[i]=val;
        }
        System.out.println("Array before sort:");
        for(int i=0;i<len;i++){
            System.out.println(arr1[i]);
        }
        for(int i=0;i<len;i++){
            for(int j=i+1;j<len;j++){
                if(arr1[i]>arr1[j]){
                    int temp=arr1[i];
                    arr1[i]=arr1[j];
                    arr1[j]=temp;
                   }
            }
           
        }
        System.out.println("Array after sort:");
        for(int i=0;i<len;i++){
            System.out.println(arr1[i]);
        }
    }
}
