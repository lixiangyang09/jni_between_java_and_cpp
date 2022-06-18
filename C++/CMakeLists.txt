project("femas-poc")

cmake_minimum_required()


include(FindJava)
include(UseJava)
set(JNI_FIND_COMPONENTS JVM)

message(STATUS "before FindJNI JNI_FIND_COMPONENTS:${JNI_FIND_COMPONENTS}")

include(FindJNI)

string(REPLACE  "${JAVA_AWT_LIBRARY}" "" LIBwithoutC "${JNI_LIBRARIES}")
set(JNI_LIBRARIES ${LIBwithoutC})

set (CMAKE_CXX_STANDARD 11)

include_directories(${JNI_INCLUDE_DIRS})

set(SOURCES
        com_finone_JavaCallback.cpp
        com_finone_JavaCallback.h
        com_finone_JavaInvoke.cpp
        com_finone_JavaInvoke.h
        CallbackManager.cpp
        CallbackManager.h
        CallbackWorker.cpp
        CallbackWorker.h
        )


set(OUTPUT_NAME femas_poc )
add_library(${OUTPUT_NAME} SHARED ${SOURCES})

set_property(TARGET ${OUTPUT_NAME} PROPERTY POSITION_INDEPENDENT_CODE ON)


ADD_CUSTOM_COMMAND(TARGET ${OUTPUT_NAME} POST_BUILD
        COMMAND "${Java_JAR_EXECUTABLE}" -cfM ${OUTPUT_NAME}_jni.jar -C ../classes .
        )

SET(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/install)


IF (APPLE)
    install(FILES ${CMAKE_CURRENT_BINARY_DIR}/lib${OUTPUT_NAME}.dylib DESTINATION .)
ELSEIF(UNIX)
    install(FILES ${CMAKE_CURRENT_BINARY_DIR}/lib${OUTPUT_NAME}.so DESTINATION .)
ENDIF()

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/${OUTPUT_NAME}_jni.jar DESTINATION .)

