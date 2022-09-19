using Microsoft.Win32;
using School.Entities;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.AccessControl;
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

namespace School.Pages
{
    /// <summary>
    /// Логика взаимодействия для EditPage.xaml
    /// </summary>
    public partial class EditPage : Page
    {
        public Service Service { get; set; }
        public string _photoDirectory = $@"{Directory.GetCurrentDirectory()}\Images\";
        private string _photoPath;
        private string _photoName;
        public EditPage(Service service)
        {
            InitializeComponent();
            Service = service ?? new Service();
            DataContext = service;
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (_photoPath != null)
                {
                    Service.MainPhoto = _photoName;
                    File.Copy(_photoPath, _photoDirectory + _photoName);
                }
                if (Service.ServiceID == 0)
                {
                    VolgaEntities.GetContext().Services.Add(Service);
                }
                VolgaEntities.GetContext().SaveChanges();
                NavigationService.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.InnerException.Message);
            }
        }

        private void LoadPhotoBtn_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "JPG Files (*.jpg)|*.jpg|PNG FIles (*.png)|*.png";
            if (openFileDialog.ShowDialog() == false)
            {
                return;
            }

            FileInfo fileInfo = new FileInfo(openFileDialog.FileName);
            if (fileInfo.Length > 8 * 1024 * 1024 * 6)
            {
                MessageBox.Show("Размер фото не должен превышать 6 Мб");
                return;
            }
            _photoName = Guid.NewGuid().ToString();
            _photoPath = fileInfo.FullName;
        }
    }
}
