//
// Created by lixiangyang on 2022/6/18.
//

#include "CallbackManager.h"
#include <iostream>

JavaVM * CallbackManager::gVM = nullptr;
jobject CallbackManager::callbackObj = nullptr;

void CallbackManager::setJavaVM(JavaVM *tmp)
{
    gVM = tmp;
}

CallbackManager & CallbackManager::getSingleton()
{
    thread_local CallbackManager singleton;
    return singleton;
}

bool CallbackManager::GetJniEnv(JavaVM *vm, JNIEnv **env) {
    bool attach_res = false;
    // Check if the current thread is attached to the VM
    auto get_env_result = vm->GetEnv((void**)env, JNI_VERSION_1_6);
    if (get_env_result == JNI_EDETACHED) {
        if (gVM->AttachCurrentThread((void **)env, nullptr) == JNI_OK) {
            attach_res = true;
            std::cout << "GetJniEnv, attach_res: " << attach_res << "; env: " << env << std::endl;

        } else {
            // Failed to attach thread. Throw an exception if you want to.
        }

        std::cout << "get_env_result: JNI_EDETACHED" << std::endl;
    } else if (get_env_result == JNI_EVERSION) {
        // Unsupported JNI version. Throw an exception if you want to.
        std::cout << "get_env_result: JNI_EVERSION" << std::endl;

    }
    std::cout << "GetJniEnv: AttachCurrentThread, res: " << attach_res << std::endl;
    return attach_res;
}

jclass CallbackManager::getObjectClass()
{
    std::cout << "CallbackManager getObjectClass, callbackObj: " << callbackObj << "; g_env: " << g_env << std::endl;
    return g_env->GetObjectClass(callbackObj);
}


CallbackManager::CallbackManager()
{
    std::cout << "CallbackManager construct" << std::endl;
    did_attach_thread = CallbackManager::GetJniEnv(gVM, &g_env);
    std::cout << "finish CallbackManager construct, did_attach_thread: " << did_attach_thread << std::endl;
}

CallbackManager::~CallbackManager()
{
    if (did_attach_thread)
    {
        gVM->DetachCurrentThread();
    }
}