package kr.co.java;

import java.util.ArrayList;
import java.util.List;

/*
 * ��¥ : 2019-05-02
 * �̸� : ���µ�
 * ���� : collection ArrayList �ǽ��ϱ�
 */

public class ArrayListTest {
	
	public static void main(String[] args) {
		//<E> �� �κ��� Generic(Ÿ���Էºκ�)
		List<Integer> list1 = new ArrayList<Integer>();
		
		// ���� �߰�
		list1.add(1);	//�ε��� ��ȣ�� 0
		list1.add(2);	//�ε��� ��ȣ�� 1
		list1.add(3);	//�ε��� ��ȣ�� 2
		list1.add(4);	//�ε��� ��ȣ�� 3
		list1.add(5);	//�ε��� ��ȣ�� 4
		
		// ù��° ���� 1 ����
		list1.remove(0);
		
		// ����Ʈ ���� ����
		System.out.println("list1 ��ü ������: " + list1.size()); //���� �迭�� length�� �������� �̰� ���ҿ��� size�̴�.
		
		// ����Ʈ ���� ����
		System.out.println("list1 0��° ����: " + list1.get(0));
		System.out.println("list1 1��° ����: " + list1.get(1));
		System.out.println("list1 2��° ����: " + list1.get(2));
		
		List<String> list2 = new ArrayList<String>();
		
		list2.add("����");
		list2.add("����");
		list2.add("�뱸");
		list2.add("�λ�");
		list2.add("����");
		
		System.out.println("list2 1��° ���� : " + list2.get(0));
		System.out.println("list2 2��° ���� : " + list2.get(1));
		System.out.println("list2 3��° ���� : " + list2.get(2));
		System.out.println("list2 4��° ���� : " + list2.get(3));
		System.out.println("list2 5��° ���� : " + list2.get(4));
		
		for(String city : list2) {
			System.out.println("list2 ���� :"+ city);
		}
		
		List<Apple> list3 = new ArrayList<Apple>();
		
		list3.add(new Apple("�ѱ�", 5000));
		list3.add(new Apple("�߱�", 2000));
		list3.add(new Apple("�Ϻ�", 4000));
		list3.add(new Apple("�̱�", 3000));
		list3.add(1, new Apple("ȣ��", 3500)); // �ε��� ���� 1������ ���� �ļ����� �и�
		
		System.out.println("3��° �����" + list3.get(2).getCountry()+"����Դϴ�.");
		
	}

}
