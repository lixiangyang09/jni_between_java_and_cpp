#include "com_finone_JavaInvoke.h"
#include "CallbackWorker.h"
#include <iostream>
/*
 * Class:     com_finone_JavaInvoke
 * Method:    invokeMethod1
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_com_finone_JavaInvoke_invokeMethod1
  (JNIEnv *, jobject)
{
    std::cout << "invoke Java_com_finone_JavaInvoke_invokeMethod1" << std::endl;
    CallbackWorker callbackWorker;
    callbackWorker.start();
}

/*
 * Class:     com_finone_JavaInvoke
 * Method:    invokeMethod2
 * Signature: (Ljava/lang/String;)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_finone_JavaInvoke_invokeMethod2
  (JNIEnv *env, jobject obj, jstring str1)
{
    std::cout << "invoke Java_com_finone_JavaInvoke_invokeMethod2" << std::endl;

    const char * str = env->GetStringUTFChars(str1, nullptr);

    std::cout << "input of Java_com_finone_JavaInvoke_invokeMethod2 is " << str << std::endl;

    env->ReleaseStringUTFChars(str1, str);
    /*We assume here that the user does not type more than 127 characters */
    std::string ress = "abcedf";
    return env->NewStringUTF(ress.c_str());
}

/*
 * Class:     com_finone_JavaInvoke
 * Method:    invokeMethod3
 * Signature: (Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_finone_JavaInvoke_invokeMethod3
  (JNIEnv *env, jobject, jstring, jobject intValue)
{
    std::cout << "invoke Java_com_finone_JavaInvoke_invokeMethod3" << std::endl;
    jclass thisClass = env->GetObjectClass(intValue);
    jmethodID intValueMethod = env->GetMethodID(thisClass, "intValue", "()I");
    jint intRes = env->CallIntMethod(intValue, intValueMethod);
    std::cout << "input of Java_com_finone_JavaInvoke_invokeMethod3 intValue is " << intRes << std::endl;

    std::string ress = "Java_com_finone_JavaInvoke_invokeMethod3";
    return env->NewStringUTF(ress.c_str());
}
