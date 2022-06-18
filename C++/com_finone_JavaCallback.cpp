
#include "com_finone_JavaCallback.h"
#include <iostream>
#include "CallbackManager.h"

/*
 * Class:     com_finone_JavaCallback
 * Method:    initCallback
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_com_finone_JavaCallback_initCallback(JNIEnv *env, jobject obj)
{
    std::cout << "invoke Java_com_finone_JavaCallback_initCallback." << std::endl;
    if (CallbackManager::gVM == nullptr)
    {
        std::cout << "Init CallbackManager::gVM." << std::endl;
        JavaVM * tmpGVM;
        env->GetJavaVM(&CallbackManager::gVM);
        std::cout << "Finish init CallbackManager::gVM." << std::endl;
    }
    CallbackManager::callbackObj = env->NewGlobalRef(obj);
    std::cout << "Set CallbackManager::getSingleton().callbackObj" << std::endl;
}




