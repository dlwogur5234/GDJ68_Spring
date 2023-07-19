package com.iu.main.di;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Dependency Injection 의존성 주입
		//1. method
		//2. 생성자
		
		Robot robot = new Robot();
		
		
		
		robot = null;
		
		
		Arms arms = new Arms();
		robot.setArms(arms);
		System.out.println(robot.getArms());
	}

}
