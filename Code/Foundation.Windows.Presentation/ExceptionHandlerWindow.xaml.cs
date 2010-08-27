using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Foundation.Services;
using Foundation.Services.Registration;

namespace Foundation.Windows.Presentation
{
    /// <summary>
    /// Interaction logic for ExceptionHandlerWindow.xaml
    /// </summary>
    [RegisterComponent]
    public partial class ExceptionHandlerWindow : Window, IExceptionHandlerWindow
    {
        public ExceptionHandlerWindow()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Handles the exception.
        /// </summary>
        /// <param name="exception">The exception.</param>
        /// <returns></returns>
        public ExceptionHandlingOption HandleException(Exception exception)
        {
            DataContext = new ExceptionModel( exception );
            ShowDialog();
            switch (((ExceptionModel)DataContext).SelectedOption)
            {
                case ExceptionHandlingOption.None:
                    break;
                case ExceptionHandlingOption.Shutdown:
                    Application.Current.Shutdown();
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
            return ((ExceptionModel) DataContext).SelectedOption;
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            ((ExceptionModel)DataContext).SelectedOption = ExceptionHandlingOption.Shutdown;
            Close();
        }

        private void ContinueButton_Click(object sender, RoutedEventArgs e)
        {
            ((ExceptionModel) DataContext).SelectedOption = ExceptionHandlingOption.None;
            Close();
        }
    }

    public class ExceptionModel
    {
        public ExceptionModel(Exception exception)
        {
            Message = exception.Message;
            Type = exception.GetType();
            Details = exception.ToString();
        }

        public string Details { get; set; }

        public Type Type { get; set; }

        public string Message { get; set; }

        public ExceptionHandlingOption SelectedOption { get; set; }
    }
}
