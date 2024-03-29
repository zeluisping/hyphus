cmake_minimum_required(VERSION 3.5)
project(hyphus)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++14 -lmingw32 -g")
set(CMAKE_EXE_LINKER_FLAGS "-static-libgcc -static-libstdc++")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/bin")

add_definitions(-DGLEW_STATIC)

include_directories("${CMAKE_CURRENT_SOURCE_DIR}")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/include")
link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/")

set(SOURCE_FILES main.cpp utils.h core/Engine.cpp core/Engine.h core/Graphics.cpp core/Graphics.h core/Color.h core/Entity.h core/Component.h core/ResourceFactory.cpp core/ResourceFactory.h core/LuaState.cpp core/LuaState.h core/Window.cpp core/Window.h core/OpenGLWindow.cpp core/OpenGLWindow.h core/OpenGLContext.h)
file(GLOB LUA_SRC "lua/*.h" "lua/*.hpp" "lua/*.c")

add_executable(hyphus ${SOURCE_FILES} ${LUA_SRC})

target_link_libraries(hyphus SDL2main SDL2 opengl32 glew32 DevIL ILU ILUT)