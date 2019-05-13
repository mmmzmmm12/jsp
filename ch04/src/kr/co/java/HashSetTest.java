package kr.co.java;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/*
 * 날짜 : 2019-05-02
 * 이름 : 정태동
 * 내용 : collection ArrayList 실습하기
 */

public class HashSetTest {
	public static void main(String[] args) {
		
		Set<Integer> set = new HashSet<Integer>();
		
		set.add(1);
		set.add(2);
		set.add(3);
		set.add(4);
		set.add(5);
		set.add(3); // 결론적으론 5개이다 왜냐하면 집합은 중복을 허용을 하지 않는다.
					// set 을 이용하여 꺼낼려면 주로 반복자가(Iterator) 나온다.
		
		
		System.out.println("집합 원소 갯수 : " + set.size());
		
		//Iterator은 반복자라는 의미이다.
		Iterator<Integer> it = set.iterator();
		
		// hasNext라는것은 원소의 갯수만큼 반복한느 것이다.
		while(it.hasNext()) {
			System.out.println("set 원소: " + it.next());
		}
	}

}
