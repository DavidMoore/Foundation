using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Foundation.Windows;

namespace Foundation.ErrorAnalyzer
{
    using System.Globalization;
    using System.Text.RegularExpressions;

    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        const string hexString = "^(0[xX]|&[hH])?(?<number>[0-9a-zA-Z]{8}|[0-9a-zA-Z]{16})$";
        static readonly Regex hexRegex = new Regex(hexString, RegexOptions.Compiled);

        public MainWindow()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            var code = errorCode.Text.Trim();

            if (string.IsNullOrWhiteSpace(code)) return;

            var isHex = hexRegex.IsMatch(code);

            int integer;

            if (isHex)
            {
                code = hexRegex.Match(code).Groups["number"].Value;
                integer = int.Parse(code, NumberStyles.HexNumber, CultureInfo.CurrentCulture.NumberFormat);
            }
            else
            {
                integer = int.Parse(code, CultureInfo.CurrentCulture.NumberFormat);
            }

            // Convert to a proper HRESULT code, padding it out.
            // For short error codes, for example error code 2 (ERROR_FILE_NOT_FOUND), they need
            // to be padded to a full HRESULT length, so 0x00000002 becomes 0x80070002.
            if ((integer & 2147483648L) != 2147483648L)
            {
                Console.WriteLine("Error message: {0}", Win32Error.GetMessage(integer));
                integer = integer & ushort.MaxValue | -2147024896;
            }

            Console.WriteLine("Decimal value: {0}", integer);
            Console.WriteLine("    Hex value: 0x{0:x}", integer);

            // Treat as an hresult
            var exception = Marshal.GetExceptionForHR(integer);

            Console.WriteLine("Exception: {0}", exception);

            textBox2.Text = exception.ToString();
        }
    }
}
