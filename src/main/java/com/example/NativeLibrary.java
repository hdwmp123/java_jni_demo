package com.example;


public class NativeLibrary {
    public native int add(int a, int b);

    public static void main(String[] args) {
        System.out.println("NativeLibrary load...");
        System.loadLibrary("NativeLibrary");
        System.out.println("NativeLibrary load OK");
        NativeLibrary nativeLib = new NativeLibrary();
        int result = nativeLib.add(5, 3);
        System.out.println("Result: " + result);
    }
}
