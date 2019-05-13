package kr.co.java;

import java.util.ArrayList;
import java.util.List;

/*
 * 날짜 : 2019-05-02
 * 이름 : 정태동
 * 내용 : collection ArrayList 실습하기
 */

public class ArrayListTest {
	
	public static void main(String[] args) {
		//<E> 이 부분은 Generic(타입입력부분)
		List<Integer> list1 = new ArrayList<Integer>();
		
		// 원소 추가
		list1.add(1);	//인덱스 번호는 0
		list1.add(2);	//인덱스 번호는 1
		list1.add(3);	//인덱스 번호는 2
		list1.add(4);	//인덱스 번호는 3
		list1.add(5);	//인덱스 번호는 4
		
		// 첫번째 원소 1 제거
		list1.remove(0);
		
		// 리스트 원소 갯수
		System.out.println("list1 전체 사이즈: " + list1.size()); //보통 배열은 length로 구하지만 이건 원소여서 size이다.
		
		// 리스트 원소 추출
		System.out.println("list1 0번째 원소: " + list1.get(0));
		System.out.println("list1 1번째 원소: " + list1.get(1));
		System.out.println("list1 2번째 원소: " + list1.get(2));
		
		List<String> list2 = new ArrayList<String>();
		
		list2.add("서울");
		list2.add("대전");
		list2.add("대구");
		list2.add("부산");
		list2.add("광주");
		
		System.out.println("list2 1번째 원소 : " + list2.get(0));
		System.out.println("list2 2번째 원소 : " + list2.get(1));
		System.out.println("list2 3번째 원소 : " + list2.get(2));
		System.out.println("list2 4번째 원소 : " + list2.get(3));
		System.out.println("list2 5번째 원소 : " + list2.get(4));
		
		for(String city : list2) {
			System.out.println("list2 원소 :"+ city);
		}
		
		List<Apple> list3 = new ArrayList<Apple>();
		
		list3.add(new Apple("한국", 5000));
		list3.add(new Apple("중국", 2000));
		list3.add(new Apple("일본", 4000));
		list3.add(new Apple("미국", 3000));
		list3.add(1, new Apple("호주", 3500)); // 인덱스 순서 1번쨰로 삽입 후순위는 밀림
		
		System.out.println("3번째 사과는" + list3.get(2).getCountry()+"사과입니다.");
		
	}

}
