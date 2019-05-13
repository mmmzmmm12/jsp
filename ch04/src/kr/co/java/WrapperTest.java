package kr.co.java;

/*
 * 날 짜 : 2019/05/02
 * 이 름 : 정태동
 * 내 용 : Wrapper 클래스 실습하기
 */

public class WrapperTest {
	
	public static void main(String[] args) {
		
		// 기본타입 변수 -> 기본 파일로 stack부분에 저장됨
		boolean var1 = true;
		int		var2 = 10;
		long 	var3 = 1000L;
		char	var4 = 'A';
		double	var5 = 1.2345;
		
		// 기본타입 -> String
		String s1 = String.valueOf(var1);
		String s2 = String.valueOf(var2);
		String s3 = String.valueOf(var3);
		String s4 = ""+var4;
		String s5 = ""+var5;
		
		System.out.println("s1 :" + s1);
		System.out.println("s2 :" + s2);
		System.out.println("s3 :" + s3);
		System.out.println("s4 :" + s4);
		System.out.println("s5 :" + s5);
		
		// Wrapper 클래스 -> 참조파일형태 heap부분에 저장됨( wp1호출시 주소값으로 true라는 부분을 참조하는 형태가 됨 )
		// Wrapper는 변수를 객체로 만들 수 있다.
		Boolean wp1 = new Boolean(true);
		Integer	wp2 = new Integer(10);
		Long	wp3 = new Long(1000);
		Double	wp4 = new Double(1.2345); 
		
		// Wrapper -> String
		String st1 = String.valueOf(wp1); // 여기서 오토 언박싱이 한번 일어남 
		String st2 = String.valueOf(wp2);
		String st3 = wp3.toString();
		String st4 = wp4.toString();
		
		System.out.println("st1 :" + st1);
		System.out.println("st2 :" + st2);
		System.out.println("st3 :" + st3);
		System.out.println("st4 :" + st4);
		
		// Wrapper 활용 I (String -> 기본타입) 
		// -> 저러한 str1~3을 기본형 즉, boolean, int, double의 형태로 자료형 변형을 위해 Wrapper이라는 것이 나온다.
		String str1 = "false";
		String str2 = "100";
		String str3 = "1.234567";
		String str4 = new String("Hello");
		
		// 자료형 변환은 아래와 같이 한다.
		// Boolean.parseBoolean 과 Boolean.valueof의 차이점은 전자는 받는 값이 변수이고 후자는 랩퍼값이다.
		boolean r1 = Boolean.parseBoolean(str1);
		int 	r2 = Integer.parseInt(str2);
		double	r3 = Double.parseDouble(str3);
		
		System.out.println("r1 : " + r1);
		System.out.println("r2 : " + r2);
		System.out.println("r3 : " + r3);
		
		// Wrapper 활용 II (String -> Wrapper)
		// Wrapper(첫 글자 대문자)라는 것은 말그대로 포장된 것이라고 비유할 수 있는데. 즉, 객체로 저장한다는 의미이다.
		// 박싱 -> 랩퍼값 , 언박싱 -> 기본값
		
		Boolean w1 = Boolean.valueOf(str1);
		Integer w2 = Integer.valueOf(str2);
		Double  w3 = Double.valueOf(str3);
		
		System.out.println("w1 : " + w1);
		System.out.println("w2 : " + w2);
		System.out.println("w3 : " + w3);
		
		// auto-Boxing
		Boolean box1 = true; // -> Boolean box1 = new Boolean(true); 와 같다 이것이 간략해 진 것.
		Integer box2 = 100;
		Double 	box3 = 1.123;
		
		System.out.println("box1 : " + box1);
		System.out.println("box2 : " + box2);
		System.out.println("box3 : " + box3);
		
		// auto-UnBoxing
		boolean ubx1 = box1;
		int		ubx2 = box2;
		double	ubx3 = box3;
		
		System.out.println("ubx1 : " + ubx1);
		System.out.println("ubx2 : " + ubx2);
		System.out.println("ubx3 : " + ubx3);
		
	}

}















