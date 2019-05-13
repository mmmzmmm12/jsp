package kr.co.java2;

/*
 * ��¥ : 2019-05-03
 * �̸� : ���µ�
 * ���� : Heap �޸� �ǽ��ϱ�
 */

public class HeapTest {
	public static void main(String[] args) {
	
		Args arg = new Args();
		arg.x = 100;
		
		int[] arr = {1,2,3};
		
		// arg.x �� 100�̱⿡ x=100���� �ԷµǾ�
		// x= 150�̵����� �޼ҵ尡 �����鼭 x���� ������Եȴ�
		// �׷��� �Ŀ����� ���� x=100 �������ʴ´�.
		arg.add(arg.x);
		System.out.println("arg.x = " + arg.x);
		
		// arg�� ������ argŬ������ �����ϵ��� �ϴ� ��
		// �׷��Ƿ� �ᱹ x�� ���� ����̵Ǵ� ��
		// �׷��� ���⼱ �������� ��ü arg.x�� 140���� �����߱⿡
		// x=140���� �����ְԵȴ�.
		arg.add(arg);
		System.out.println("arg.x = " + arg.x);
				
		// new�� ���� ���Ӱ� ����������� 
		// ��������� �� stack�κп��� �������Ǳ⿡
		// ������ ������� �׷��Ƿ� heap�κп����� ������ԵǾ�
		// �ᱹ x= 140���� �����ִ�.
		
		arg.addNew(arg);
		System.out.println("arg.x = " + arg.x);
		
		/*
		arg = arg.addNew(arg);
		System.out.println("arg.x = " + arg.x);
		*/
		
		// arg[0]++; �̹Ƿ� 
		// 1, 2 ,3 -> 2, 2, 3�� �ȴ�.
		arg.add(arr);
		System.out.println("arr[0] = " + arr[0]);
	}

}
