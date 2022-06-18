//
// Created by lixiangyang on 2022/6/18.
//
#include "CallbackManager.h"
#include "CallbackWorker.h"
#include <thread>
#include <jni.h>
#include <random>
#include <iostream>
#include <unistd.h>

using std::cout;
using std::endl;
using std::default_random_engine;

void CallbackWorker::callbackEntry()
{
    while (true)
    {
        sleep(5);
        default_random_engine e;
        std::uniform_real_distribution<int> u(0, 1000);
        auto rr = rand();
        unsigned int randomNumber = u(e);
        std::cout << "Generate random number from c++: " << rr << std::endl;

        std::cout << "invoke Java_com_finone_JavaInvoke_invokeMethod3" << std::endl;
        CallbackManager& callbackManager = CallbackManager::getSingleton();
        jclass thisClass = callbackManager.getObjectClass();
        std::cout << "begin to invoke callback2" << std::endl;
        jmethodID intValueMethod = callbackManager.g_env->GetMethodID(thisClass, "callback2", "(Ljava/lang/String;)V");

        std::string ress = std::to_string(rr);
        jstring res = callbackManager.g_env->NewStringUTF(ress.c_str());
        callbackManager.g_env->CallVoidMethod(callbackManager.callbackObj, intValueMethod, res);
    }
}

void CallbackWorker::start()
{
    std::cout << "enter CallbackWorker::start" << std::endl;
    std::thread t1(callbackEntry);
    t1.detach();
}