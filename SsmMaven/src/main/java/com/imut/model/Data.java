package com.imut.model;

public class Data {
	String answer;
	int sum;
	String percentage;
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public String getPercentage() {
		return percentage;
	}
	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}
	@Override
	public String toString() {
		return "Data [answer=" + answer + ", sum=" + sum + ", percentage=" + percentage + "]";
	}
	
}
