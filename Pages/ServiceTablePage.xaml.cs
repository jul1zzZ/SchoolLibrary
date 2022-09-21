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

namespace School.Pages
{
    /// <summary>
    /// Логика взаимодействия для ServiceTablePage.xaml
    /// </summary>
    public partial class ServiceTablePage : Page
    {
        public List<Service> Services { get; set; }
        public ServiceTablePage()
        {
            InitializeComponent();
            Services = VolgaEntities.GetContext().Services.ToList();
            DataContext = Services;

        }

        private void DeleteBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.EditPage(null));
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.EditPage((Service)(sender as Button).DataContext));
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            DataService.ItemsSource = null;
            VolgaEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
            List<Service> services = VolgaEntities.GetContext().Services.OrderBy(p => p.Name).ToList();
            DataService.ItemsSource = services;
        }
    }
}
