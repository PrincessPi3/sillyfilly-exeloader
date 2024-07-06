#include <iostream>
#include <windows.h>
#include <shellapi.h>
#include <string>
#include <limits.h>

int main() {
    HINSTANCE retval = ShellExecuteA(NULL, "runas", "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe", NULL, NULL, SW_NORMAL);
    return 0;
}