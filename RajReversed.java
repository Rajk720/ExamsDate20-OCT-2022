// Write a code for REVERSE string

import java.io.*;
import java.util.Scanner;

class RajReversed {
	public static void main (String[] args) {
		
		String str= "EDULAB", nstr="";
		char ch;
		
	System.out.print("Original word: ");
	System.out.println("EDULAB"); //Example word
		
	for (int i=0; i<str.length(); i++)
	{
		ch= str.charAt(i); 
		nstr= ch+nstr; 
	}
	System.out.println("Reversed word: "+ nstr);
	}
}