package kr.co.java2;
/*
 * 날짜 : 2019-05-03
 * 이름 : 정태동
 * 내용 : Stack 메모리 실습하기
 */

public class StackTest {
	
	// static 에서는 non static을 호출할수 없다.
	public static void main(String[] args) {
		
		int result 	= 0;
		int begin 	= 1;
		int end		= 10;
		
		result = sum(begin, end);
		
		System.out.println("result : " + result);
	}

	public static int sum(int start, int end) {
		
		int sum = 0;
		
		for(int k = start; k<=end ; k++) {
			sum += k;
		}
		return sum;
		
	}
}
