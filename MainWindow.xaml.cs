using School.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace School
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        
        public MainWindow()
        {
            InitializeComponent();
            MaimFrame.Navigate(new Pages.ServicePage());
            
        }

        private void MaimFrame_ContentRendered(object sender, EventArgs e)
        {
            if (MaimFrame.CanGoBack)
            {
                BtnBack.Visibility = Visibility.Visible;
                AdminBtn.Visibility = Visibility.Collapsed;
            }
            else
            {
                BtnBack.Visibility = Visibility.Collapsed;
                AdminBtn.Visibility = Visibility.Visible;
            }
            
        }
    

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            if (MaimFrame.CanGoBack)
            {
                MaimFrame.GoBack();
            }
        }

        private void AdminBtn_Click(object sender, RoutedEventArgs e)
        {
            MaimFrame.Navigate(new Pages.AdminPage());
        }

        private void ServiceBtn_Click(object sender, RoutedEventArgs e)
        {
            MaimFrame.Navigate(new Pages.ServiceTablePage());
        }
    }
}
