package com.iu.main.di;

public class Robot {
	private String name;
	
	private Arms arms;//로봇은 팔을 가지고 있기 때문에 멤버변수로 선언
	
	public Robot() {
		this.arms=new Arms(); 
		//결합도가 높다(강하다)
	}
	
	public Robot(Arms arms) {
		this.arms= arms;
		//결합도가 낮다(약하다)
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Arms getArms() {
		return arms;
	}

	public void setArms(Arms arms) {
		this.arms = arms;
	}
}
