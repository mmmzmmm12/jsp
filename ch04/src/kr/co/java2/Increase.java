package kr.co.java2;

public class Increase {
	
	// java의 int 변수의 디폴트값은 0
	int num1;
	static int num2 ;
	
	public Increase() {
		num1++;
		num2++;
		
		System.out.println("num1 : " + num1);
		System.out.println("num2 : " + num2);
	}
	
	public static void add() {
		num2++;
	}
	
}
