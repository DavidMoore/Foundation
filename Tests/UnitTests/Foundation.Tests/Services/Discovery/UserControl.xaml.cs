using Foundation.Services;

namespace Foundation.Tests.Services.Discovery
{
    /// <summary>
    /// Interaction logic for UserControl.xaml
    /// </summary>
    [RegisterComponent]
    [RegisterComponent(typeof(IUserControlInterface2))]
    public partial class UserControl : System.Windows.Controls.UserControl, IUserControlInterface
    {
        public UserControl()
        {
            this.InitializeComponent();
        }
    }

    public interface IUserControlInterface2 {}

    public interface IUserControlInterface {}
}


