public class Stringop {
    public static void main(String[] args) {
        //String class:Encapsulates series of characters once instantiated,string objects's content is fixed and cannot be modified(immutable).This immutablity ensures that string objects are safe.
        String s1="Hello";
        String s2=new String(" world");
        System.out.println(s1);
        //Concatenation of strings
        System.out.println(s1+s2);
        //Finding length of a string
        int s3=s2.length();
        System.out.println(s3); 
        //StringBuffer:Rep a mutable seq of characters.Includes various string manipulation operations like insertion,deletion,append,etc.
        //Syntax:StringBuffer obj=new StringBuffer(); 
        StringBuffer str=new StringBuffer("abc");
        System.out.println(str); 
        System.out.println(str+s2);
        System.out.println(str+"def");
        System.out.println(str.append("Java"));
        System.out.println(str.insert(2,"xyz"));
        System.out.println(str.delete(2, 5));
    }
}
/**string object is made using string literal.eg:String s="java"
using new keyword.eg=String s=new String("java")
Using new keyword,jvm creates a new string object in the normal heap memory.And the literal "abc" is placed in the string constant pool.
the variable s will refer to the obj in the heap.
CharSequence interface=interface in java.lang package.It enables flexible and independent allocation of m/y.
Various String handling classes:

StringBuilder
Each time u create a string is created,jvm checks the string constant pool(m/y loc) first.If it already exist in the a reference to the pooled instance is written.
if not,a new string instance is created and placed in the pool.**/ 