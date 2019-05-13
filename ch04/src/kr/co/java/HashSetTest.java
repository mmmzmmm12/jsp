package kr.co.java;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/*
 * ��¥ : 2019-05-02
 * �̸� : ���µ�
 * ���� : collection ArrayList �ǽ��ϱ�
 */

public class HashSetTest {
	public static void main(String[] args) {
		
		Set<Integer> set = new HashSet<Integer>();
		
		set.add(1);
		set.add(2);
		set.add(3);
		set.add(4);
		set.add(5);
		set.add(3); // ��������� 5���̴� �ֳ��ϸ� ������ �ߺ��� ����� ���� �ʴ´�.
					// set �� �̿��Ͽ� �������� �ַ� �ݺ��ڰ�(Iterator) ���´�.
		
		
		System.out.println("���� ���� ���� : " + set.size());
		
		//Iterator�� �ݺ��ڶ�� �ǹ��̴�.
		Iterator<Integer> it = set.iterator();
		
		// hasNext��°��� ������ ������ŭ �ݺ��Ѵ� ���̴�.
		while(it.hasNext()) {
			System.out.println("set ����: " + it.next());
		}
	}

}
