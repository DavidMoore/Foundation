using System.Runtime.InteropServices;

namespace Foundation.Windows.Shell
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