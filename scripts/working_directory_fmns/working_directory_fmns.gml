if (os_type == os_windows)
{
    var FileManager_result = external_call(external_define("FileManager.dll", "working_directory", 0, 1, 0))
    external_free("FileManager.dll")
    return FileManager_result;
}
if (os_type == os_macosx)
{
    FileManager_result = external_call(external_define("FileManager.dylib", "working_directory", 0, 1, 0))
    external_free("FileManager.dylib")
    return FileManager_result;
}
if (os_type == os_linux)
{
    FileManager_result = external_call(external_define("FileManager.so", "working_directory", 0, 1, 0))
    external_free("FileManager.so")
    return FileManager_result;
}
