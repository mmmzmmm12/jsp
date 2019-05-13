package kr.co.java3;

/*
 * ��¥ : 2019-05-03
 * �̸� : ���µ�
 * ���� : String �޸� �ǽ��ϱ�
 */

public class StringTest {
	
	public static void main(String[] args) {
		
		char c = 'H';
		char [] cArr = {'H','e','l','l','o'}; 
		
		// ���ڿ� (���� + �迭) -> �迭�� Ư���� �޾Ƽ� String�� ��ü��
		
		// ������� str2ó�� ��������� ���־����� str1ó�� �ᵵ�ǵ��� ���������.
		String str1 = "Hello";
		String str2 = new String("Hello");
		String str3 = new String("Hello");
		String str4 = "Hello";
		
		// ���ڿ� ��
		// str1 str2 str3 �� ���� heap�κп��� �ٸ� �ڵ带 ������ ġ���� str4�� str1�� �����κ��� heap�κп��� �����Ѵ�.
		// equals ���ڿ��� ���Ѵٸ� �Ʒ��� ���� ���� ������������ ���ϴ� ���̴�.
		if(str1 == str2) {
			System.out.println("str1�� str2�� �ּҰ�(������)�� ����.");
		}else {
			System.out.println("str1�� str2�� �ּҰ�(������)�� �ٸ���.");
		}
		
		if(str2 == str3) {
			System.out.println("str2�� str3�� �ּҰ�(������)�� ����.");
		}else {
			System.out.println("str2�� str3�� �ּҰ�(������)�� �ٸ���.");
		}
		
		if(str1 == str4) {
			System.out.println("str1�� str4�� �ּҰ�(������)�� ����.");
		}else {
			System.out.println("str1�� str4�� �ּҰ�(������)�� �ٸ���.");
		}
		
		// �׷��� ���ڿ��� ���ϰ�ʹٸ� �Ʒ��� ���� �ؾ��Ѵ�.
		if(str1.equals(str2)) {
			System.out.println("str1�� str2�� ���ڿ��� ����.");
		}else {
			System.out.println("str1�� str2�� ���ڿ��� �ٸ���.");
		}
		
		
		// ���ڿ� ��� 
		System.out.println("str ���ڿ� ���� : " + str1.length());
		
		char c1 =  str1.charAt(0);
		char c2 =  str1.charAt(2);
		char c3 =  str1.charAt(3);
		
		System.out.println("c1 : " + c1);
		System.out.println("c2 : " + c2);
		System.out.println("c3 : " + c3);
		
		String v1 = "Hello Korea";
		String v2 = v1.substring(6);
		String v3 = v1.substring(6,9);
		System.out.println("v2 : " + v2);
		System.out.println("v3 : " + v3);
		
		int v4 = v1.indexOf("e");
		int v5 = v1.lastIndexOf("e");
		System.out.println("v4 : " + v4);
		System.out.println("v5 : " + v5);
		
		String v6 = v1.replace("Korea", "Busan");
		System.out.println("v6 : " + v6);
		
	}

}
