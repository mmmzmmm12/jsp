package kr.co.java2;

/*
 * ��¥ : 2019-05-03
 * �̸� : ���µ�
 * ���� : Method Area �ǽ��ϱ�
 */

public class MethodAreaTest {

	public static void main(String[] args) {
		
		// new�� ����鼭 heap�κп� �ְԵȴ�.
		Increase ic1 = new Increase();
		Increase ic2 = new Increase();
		Increase ic3 = new Increase();
		
		// static�� �ƴ϶� ��ü�� ���� ����
		ic1.num1 = 2;
		// static �̶� �ٷ� �������� 
		Increase.num2 = 2;
		// static��
		Increase.add();
	}
}
/* Increase Ŭ������ num2�� add()�� 
	Increase�ȿ� ������ 
	static�̶� ���ΰ����Ǹ�,
	static�̹Ƿ� ��ü���������ʿ���� �ҷ��ü� �ִ�.
*/
/* | stack |	| Heap |	| Method Area |
	������		 ic1		  main()
							  add()
*/
	