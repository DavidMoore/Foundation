using System.Windows.Controls;
using Foundation.Services.Registration;

namespace Foundation.Tests.Services.Discovery
{
    /// <summary>
    /// Interaction logic for UserControl.xaml
    /// </summary>
    [RegisterComponent]
    [RegisterComponent(typeof(IUserControlInterface2))]
    public partial class TestUserControl : IUserControlInterface
    {
        public TestUserControl()
        {
        }
    }

    public interface IUserControlInterface2 {}

    public interface IUserControlInterface {}
}


