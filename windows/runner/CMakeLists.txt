# Add TensorFlow Lite
set(TFLITE_DLL "${CMAKE_CURRENT_SOURCE_DIR}/libtensorflowlite_c.dll")
add_custom_command(
    TARGET ${BINARY_NAME} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy
            ${TFLITE_DLL}
            $<TARGET_FILE_DIR:${BINARY_NAME}>
) 