package com.finone;

public class JavaCallback {
    public native void initCallback();

    public void callback1() {
        System.out.println("Invoke callback1");
    }

    public void callback2(String input) {
        System.out.println("Invoke callback2 in java with " + input);
    }

    public String callback3(Integer input) {
        System.out.println("Invoke callback3 with " + input);
        return input.toString();
    }
}
