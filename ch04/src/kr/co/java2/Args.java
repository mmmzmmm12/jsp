package kr.co.java2;

public class Args {
	
	int x;
	
	public void add(int x) {
		x = x + 50;
	}
	
	/* 
	 x=150�� �Ǿ��µ� �̰� �ٽ� ��������� 
	 �ֱ����ؼ��� this. �� �Է������ 
	 ���� ���Ѵ�.
	public void add(int x) {
		this.x = x + 50;
	} 
	*/
	public void add(int[] arr) {
		arr[0]++;
	}
	public void add(Args arg) {
		arg.x = arg.x + 40;
	}
	
	public void addNew(Args arg) {
		arg = new Args();
	
	/*
	public Args addNew(Args arg) {
		arg = new Args();
		
		return arg;
	
	*/
	}
}
