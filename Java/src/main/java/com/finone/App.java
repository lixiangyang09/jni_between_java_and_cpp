package com.finone;

import java.util.concurrent.locks.LockSupport;

/**
 * Hello world!
 *
 */
public class App 
{
    static {
        System.out.println(System.getProperty("user.dir") + "/../C++/install/libfemas_poc.dylib");
        System.load(System.getProperty("user.dir") + "/../C++/install/libfemas_poc.dylib");
    }

    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        JavaCallback javaCallback = new JavaCallback();
        javaCallback.initCallback();

        JavaInvoke javaInvoke = new JavaInvoke();
        javaInvoke.invokeMethod1();
        javaInvoke.invokeMethod2("invokeMethod2 from java");
        javaInvoke.invokeMethod3("invokeMethod3 from java", 32);
        System.out.println("Begin to sleep");
        LockSupport.parkNanos((long)1e10);
    }
}
