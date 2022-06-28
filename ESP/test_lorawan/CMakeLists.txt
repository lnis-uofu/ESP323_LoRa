# For more information about build system see
# https://docs.espressif.com/projects/esp-idf/en/latest/api-guides/build-system.html
# The following five lines of boilerplate have to be in your project's
# CMakeLists in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.5)

# frequency band 
add_compile_definitions(REGION_US915)
# specifying modem
add_compile_definitions(USE_MODEM_LORA)


set(EXTRA_COMPONENT_DIRS components)
include($ENV{IDF_PATH}/tools/cmake/project.cmake)
project(test_lorawan)