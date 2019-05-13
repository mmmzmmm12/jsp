package kt.co.ch02;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class SmartPhone extends Computer {
	
	private String brand;
	private String hp;
	
	public SmartPhone(String cpu, String ram, String hdd,String brand, String hp) {
		super(cpu, ram, hdd);
		this.brand = brand;
		this.hp = hp;
	} // SmartPhone이 Computer을 상속 받았으니 초기화를 다시쓸 의무가 있음.
	
/*	private String cpu;
	private String ram;
	private String hdd; */
	
	@Override // 덮어쓰기
	public int calc(int a, int b) {
		int result = a - b;
		return result;
	}
	
	public int calc(int a, int b, boolean mul) {
		
		int result = 0;
		
		if(mul) {
			result = a * b;
		}else {
			result = a / b;
		}
		
		return result;
	}
	
	@Override
	public void internet(JspWriter out) throws IOException {
		out.println("<p>스마트폰으로  인터넷...</p>");
	}
	
}
