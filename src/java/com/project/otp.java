/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project;

/**
 *
 * @author lenovo
 */
public class otp {




// Java code to explain how to generate OTP 
//declaring a of return type String 
//which on calling provides the otp 
	public static String generateOTP() 
	{ //int randomPin declared to store the otp 
		//since we using Math.random() hence we have to type cast it int 
		//because Math.random() returns decimal value 
		int randomPin =(int) (Math.random()*9000)+1000; 
		String otp = String.valueOf(randomPin); 
		return otp; //returning value of otp 
	} 
			public static void main(String args[])//method to call and print otp 
	{ 
		String otpSting =generateOTP();//function calling 
		System.out.println("OTP : "+otpSting); 
	} 
}  // Here we are using Math.random() function. 
// class in Java 
    

