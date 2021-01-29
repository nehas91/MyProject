/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project;

import java.io.UnsupportedEncodingException;
import java.util.Base64;


public class Encrypt_Decrypt {

public static String encode(String value) throws UnsupportedEncodingException
{
    Base64.Encoder e=Base64.getEncoder();
    return e.encodeToString(value.getBytes("utf-8"));
}

public static String decode(String encrypted) throws UnsupportedEncodingException
{
    byte[] b=Base64.getDecoder().decode(encrypted);
    return new String(b,"utf-8");
}


    public static void main(String[] args) throws UnsupportedEncodingException {
        System.out.println(decode("MTIz"));
      
    }

}