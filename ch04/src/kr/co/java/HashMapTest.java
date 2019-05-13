package kr.co.java;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/*
 * ��¥ : 2019-05-02
 * �̸� : ���µ�
 * ���� : HashMap �ǽ��ϱ�
 */

public class HashMapTest {
	public static void main(String[] args) {
		
		// key �� value�� �ڷ���
		Map<Integer, String> map1 = new HashMap<Integer, String>();
		
		map1.put(101,"������");
		map1.put(102,"������");
		map1.put(103,"�庸��");
		map1.put(104,"������");
		map1.put(105,"�̼���");
	
		System.out.println("map1 ���� ���� : " + map1.size());
		
		map1.remove(104);
		System.out.println("map1 101�� ������: " + map1.get(101));
		System.out.println("map1 105�� ������: " + map1.get(105));
		
		// List�� Map�� ����
		ArrayList<HashMap<Integer,Apple>> list = new ArrayList<HashMap<Integer,Apple>>();
		
		HashMap<Integer, Apple> box1 = new HashMap<Integer, Apple>();
		box1.put(101, new Apple("�̱�", 3000));
		box1.put(102, new Apple("�Ϻ�", 2000));
		box1.put(103, new Apple("�߱�", 1000));
		
		HashMap<Integer, Apple> box2 = new HashMap<Integer, Apple>();
		box2.put(201, new Apple("�ѱ�", 2500));
		box2.put(202, new Apple("�߱�", 1500));
		box2.put(203, new Apple("�Ϻ�", 2000));
		
		HashMap<Integer, Apple> box3 = new HashMap<Integer, Apple>();
		box2.put(301, new Apple("����", 3500));
		box2.put(302, new Apple("����", 2500));
		box2.put(303, new Apple("ȣ��", 2000));
		
		list.add(box1);
		list.add(box2);
		list.add(box3);
		
		// �ѱ�, 2500�� ��� ����
		Map<Integer, Apple> gbox1 = list.get(1);
		Apple apple1 =  gbox1.get(201);
		System.out.println("��� ������: " + apple1.getCountry());
		System.out.println("���  �� �� : " + apple1.getPrice());
		
		// ȣ��, 2000�� ��� ����
		Apple apple2 =  list.get(2).get(303);
		System.out.println("��� ������: " + apple1.getCountry());
		System.out.println("���  �� �� : " + apple1.getPrice());
		
	}

}














