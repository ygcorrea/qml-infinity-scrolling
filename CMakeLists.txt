cmake_minimum_required(VERSION 3.16)

project(infinity-scroll VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appinfinity-scroll
    main.cpp
)

qt_add_qml_module(appinfinity-scroll
    URI infinity-scroll
    VERSION 1.0
    QML_FILES Main.qml
)

set_target_properties(appinfinity-scroll PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appinfinity-scroll
    PRIVATE Qt6::Quick
)

install(TARGETS appinfinity-scroll
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
