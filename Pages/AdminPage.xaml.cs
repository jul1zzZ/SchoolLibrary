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
using School.Entities;
using School.Pages;
using School.Properties;

namespace School.Pages
{
    /// <summary>
    /// Логика взаимодействия для AdminPage.xaml
    /// </summary>
    public partial class AdminPage : Page
    {

        string _correctPass { get; set; }
        public bool _IsCorrect { get; set; } = false;
        public AdminPage()
        {
            InitializeComponent();
            _correctPass = "0000";
            DataContext = this;
        }

        private void CheckBtn_Click(object sender, RoutedEventArgs e)
        {
            if (_correctPass != PassTb.Text)
            {
                MessageBox.Show("Пароль введен неверно");
            }
            _IsCorrect = true;
            AuthAdmin.IsAuth = true;
            if (_correctPass == PassTb.Text)
            {
                _IsCorrect = true;
                AuthAdmin.IsAuth = true;
                NavigationService.Navigate(new Pages.ServicePageAdmin());

            }
        }
    }
}
