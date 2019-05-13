package kr.co.java2;

/*
 * 날짜 : 2019-05-03
 * 이름 : 정태동
 * 내용 : Heap 메모리 실습하기
 */

public class HeapTest {
	public static void main(String[] args) {
	
		Args arg = new Args();
		arg.x = 100;
		
		int[] arr = {1,2,3};
		
		// arg.x 는 100이기에 x=100으로 입력되어
		// x= 150이되지만 메소드가 끝나면서 x값이 사라지게된다
		// 그래서 후에남는 것은 x=100 변하지않는다.
		arg.add(arg.x);
		System.out.println("arg.x = " + arg.x);
		
		// arg를 넣으면 arg클래스를 참조하도록 하는 것
		// 그러므로 결국 x가 들어가서 계산이되는 것
		// 그런데 여기선 참조변수 자체 arg.x를 140으로 변경했기에
		// x=140으로 남아있게된다.
		arg.add(arg);
		System.out.println("arg.x = " + arg.x);
				
		// new를 통해 새롭게 만들어지지만 
		// 만들어지고난 후 stack부분에서 삭제가되기에
		// 참조도 사라진다 그러므로 heap부분에서도 사라지게되어
		// 결국 x= 140으로 남아있다.
		
		arg.addNew(arg);
		System.out.println("arg.x = " + arg.x);
		
		/*
		arg = arg.addNew(arg);
		System.out.println("arg.x = " + arg.x);
		*/
		
		// arg[0]++; 이므로 
		// 1, 2 ,3 -> 2, 2, 3이 된다.
		arg.add(arr);
		System.out.println("arr[0] = " + arr[0]);
	}

}
