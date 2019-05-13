package kr.co.java2;

/*
 * 날짜 : 2019-05-03
 * 이름 : 정태동
 * 내용 : Method Area 실습하기
 */

public class MethodAreaTest {

	public static void main(String[] args) {
		
		// new로 만들면서 heap부분에 있게된다.
		Increase ic1 = new Increase();
		Increase ic2 = new Increase();
		Increase ic3 = new Increase();
		
		// static이 아니라서 객체를 통해 참조
		ic1.num1 = 2;
		// static 이라서 바로 참조가능 
		Increase.num2 = 2;
		// static임
		Increase.add();
	}
}
/* Increase 클래스의 num2와 add()는 
	Increase안에 있지만 
	static이라서 따로관리되며,
	static이므로 객체생성을할필요없이 불러올수 있다.
*/
/* | stack |	| Heap |	| Method Area |
	변수들		 ic1		  main()
							  add()
*/
	