package kr.co.java2;
/*
 * ��¥ : 2019-05-03
 * �̸� : ���µ�
 * ���� : Stack �޸� �ǽ��ϱ�
 */

public class StackTest {
	
	// static ������ non static�� ȣ���Ҽ� ����.
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
