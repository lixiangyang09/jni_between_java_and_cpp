//
// Created by lixiangyang on 2022/6/18.
//
#include <jni.h>

#ifndef FEMAS_POC_CALLBACKMANAGER_H
#define FEMAS_POC_CALLBACKMANAGER_H


class CallbackManager {

public:
    static JavaVM * gVM;
    static void setJavaVM(JavaVM *tmp);
    static CallbackManager &getSingleton();

    static jobject callbackObj;

    JNIEnv * g_env;
    bool did_attach_thread;

    jclass getObjectClass();

private:
    CallbackManager();
    ~CallbackManager();
    // 将其拷贝构造和赋值构造成为私有函数, 禁止外部拷贝和赋值
    CallbackManager(const CallbackManager &single);
    const CallbackManager &operator=(const CallbackManager &single);

    static bool GetJniEnv(JavaVM *vm, JNIEnv **env);

};


#endif //FEMAS_POC_CALLBACKMANAGER_H
