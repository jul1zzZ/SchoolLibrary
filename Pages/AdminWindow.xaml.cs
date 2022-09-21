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
using System.Windows.Shapes;
using System.IO;


namespace School.Pages
{
    /// <summary>
    /// Логика взаимодействия для AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {

        string _correctPass { get; set; }
        public bool _IsCorrect { get; set; } = false;

        public AdminWindow()
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
                this.Close();               
            }
            _IsCorrect = true;
            AuthAdmin.IsAuth = true;
            if (_correctPass == PassTb.Text)
            {
                
                this.Close();
                
            }
        }
    }
}
