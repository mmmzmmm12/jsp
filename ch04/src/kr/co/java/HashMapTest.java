package kr.co.java;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/*
 * 날짜 : 2019-05-02
 * 이름 : 정태동
 * 내용 : HashMap 실습하기
 */

public class HashMapTest {
	public static void main(String[] args) {
		
		// key 와 value의 자료형
		Map<Integer, String> map1 = new HashMap<Integer, String>();
		
		map1.put(101,"김유신");
		map1.put(102,"김춘추");
		map1.put(103,"장보고");
		map1.put(104,"강감찬");
		map1.put(105,"이순신");
	
		System.out.println("map1 원소 갯수 : " + map1.size());
		
		map1.remove(104);
		System.out.println("map1 101번 데이터: " + map1.get(101));
		System.out.println("map1 105번 데이터: " + map1.get(105));
		
		// List와 Map을 응용
		ArrayList<HashMap<Integer,Apple>> list = new ArrayList<HashMap<Integer,Apple>>();
		
		HashMap<Integer, Apple> box1 = new HashMap<Integer, Apple>();
		box1.put(101, new Apple("미국", 3000));
		box1.put(102, new Apple("일본", 2000));
		box1.put(103, new Apple("중국", 1000));
		
		HashMap<Integer, Apple> box2 = new HashMap<Integer, Apple>();
		box2.put(201, new Apple("한국", 2500));
		box2.put(202, new Apple("중국", 1500));
		box2.put(203, new Apple("일본", 2000));
		
		HashMap<Integer, Apple> box3 = new HashMap<Integer, Apple>();
		box2.put(301, new Apple("영국", 3500));
		box2.put(302, new Apple("독일", 2500));
		box2.put(303, new Apple("호주", 2000));
		
		list.add(box1);
		list.add(box2);
		list.add(box3);
		
		// 한국, 2500원 사과 추출
		Map<Integer, Apple> gbox1 = list.get(1);
		Apple apple1 =  gbox1.get(201);
		System.out.println("사과 원산지: " + apple1.getCountry());
		System.out.println("사과  가 격 : " + apple1.getPrice());
		
		// 호주, 2000원 사과 추출
		Apple apple2 =  list.get(2).get(303);
		System.out.println("사과 원산지: " + apple1.getCountry());
		System.out.println("사과  가 격 : " + apple1.getPrice());
		
	}

}














