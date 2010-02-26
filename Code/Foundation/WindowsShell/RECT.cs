using System.Runtime.InteropServices;

namespace Foundation.WindowsShell
{
    [StructLayout(LayoutKind.Sequential)]
    struct RECT
    {
        int left;
        int top;
        int right;
        int bottom;
    }
}