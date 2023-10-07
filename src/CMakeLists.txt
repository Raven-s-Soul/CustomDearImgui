# ! Executable
add_executable(${PROJECT_NAME}
    main.cpp
)

# target_include_directories(${PROJECT_NAME}
# PUBLIC external/glfw/include/GLFW # ?
# PUBLIC external/imgui
# PUBLIC external/imgui/backends
# PUBLIC external/imgui/misc/cpp
# )
# target_link_directories(${PROJECT_NAME}
# PRIVATE external/glfw/src
# PRIVATE external/imgui
# PRIVATE external/imgui/backends
# )
find_package(OpenGL REQUIRED)

target_link_libraries(${PROJECT_NAME}
    PRIVATE OpenGL::GL
    PRIVATE app_external_deps

    # glfw
)

# ! Platform-specific configuration
# if(UNIX AND NOT APPLE)
# message("Linux")
# find_package(PkgConfig REQUIRED)
# pkg_check_modules(GLFW REQUIRED glfw3)

# target_link_libraries(${PROJECT_NAME}
# PRIVATE app_external_deps
# PRIVATE ${LINUX_GL_LIBS}
# ${GLFW_STATIC_LIBRARIES})
# target_compile_options(${PROJECT_NAME} PRIVATE ${GLFW_CFLAGS})
# endif()

# if(APPLE)
# message("Mac OS X")

# find_library(OpenGL_LIBRARY OpenGL)
# find_library(COCOA_LIBRARY Cocoa)
# find_library(IOKIT_LIBRARY IOKit)
# find_library(COREVIDEO_LIBRARY CoreVideo)

# target_link_libraries(${PROJECT_NAME} PRIVATE ${OpenGL_LIBRARY} ${COCOA_LIBRARY} ${IOKIT_LIBRARY} ${COREVIDEO_LIBRARY})
# target_include_directories(${PROJECT_NAME} PRIVATE /usr/local/include /opt/local/include /opt/homebrew/include)
# link_directories(/usr/local/lib /opt/local/lib /opt/homebrew/lib)
# target_link_libraries(${PROJECT_NAME} PRIVATE glfw PRIVATE app_external_deps)
# endif()
# if(WIN32)
# target_link_options(${PROJECT_NAME}
# PUBLIC "-lgdi32 -lopengl32 -limm32 -lglfw3")
# endif()
