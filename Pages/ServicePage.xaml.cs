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
    /// Логика взаимодействия для ServicePage.xaml
    /// </summary>
   
    public partial class ServicePage : Page
    {
        int _itemcount = 0;
        int pageNum = 1;
        public ServicePage()
        {
            InitializeComponent();
            ServiceLB.ItemsSource = VolgaEntities.GetContext().Services.ToList();
            List<Service> services = VolgaEntities.GetContext().Services.ToList();
            services.Insert(0, new Service
            {
                Sale = 100
            });
            ServicesFiltCb.ItemsSource = services;
            ServicesFiltCb.DisplayMemberPath = "Sale";
            ServicesFiltCb.SelectedIndex = 0;
            ServicesSortCb.SelectedIndex = 0;


            if (AuthAdmin.IsAuth == true)
            {
               
            }
        }

        private void Update()
        {
            List<Service> services = VolgaEntities.GetContext().Services.OrderBy(p => p.Name).ToList();
            if (SearchTb.Text.Trim() != "")
            {
                services = services
                    .Where(p => p.Name.Trim().ToLower().Contains(SearchTb.Text.Trim().ToLower())).ToList();
            }
            if (ServicesFiltCb.SelectedIndex > 0)
            {
                services = services.OrderBy(p => p.Sale).ToList();
            }
            if (ServicesSortCb.SelectedIndex > 0)
            {
                switch (ServicesSortCb.SelectedIndex)
                {
                    case 1:
                        services = services.OrderBy(p => p.Price).ToList();
                        break;
                    case 2:
                        services = services.OrderByDescending(p => p.Price).ToList();
                        break;
                }
            }
            try
            {
                bool canParse = int.TryParse(PageCount.Text, out int currentPage);
                List<Service> services1 = new List<Service>();
                currentPage = currentPage <= 0 || currentPage > services.Count || !canParse ? 1 : currentPage;
                int itemsPerPage = 50;
                int offset = ((currentPage - 1) * itemsPerPage + 1) - 1;
                for (int i = offset; i < itemsPerPage + offset; i++)
                {
                    if (i <services.Count)
                    {
                        services1.Add(services[i]);
                    }
                }
                ServiceLB.ItemsSource = services1;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }


        private void ServicesSortCb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void ServicesFiltCb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            ServiceLB.ItemsSource = VolgaEntities.GetContext().Services.ToList();
            List<Service> services = VolgaEntities.GetContext().Services.ToList();
            services.Insert(0, new Service
            {
                Sale = 100
            });
            ServicesFiltCb.ItemsSource = services;
            ServicesFiltCb.DisplayMemberPath = "GetSale";
            ServicesFiltCb.SelectedIndex = 0;
            ServicesSortCb.SelectedIndex = 0;
        }

        private void PageCount_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

        private void prevPages_Click(object sender, RoutedEventArgs e)
        {
            List<Service> uslugi = VolgaEntities.GetContext().Services.OrderBy(p => p.Name).ToList();
            if (pageNum > 2)
            {
                pageNum -= 2;
                firstBtn.Content = pageNum;
                secondBtn.Content = pageNum + 1;
            }
        }

        private void firstBtn_Click(object sender, RoutedEventArgs e)
        {
            PageCount.Text = pageNum.ToString();
            Update();
        }

        private void secondBtn_Click(object sender, RoutedEventArgs e)
        {
            PageCount.Text = (pageNum + 1).ToString();
            Update();
        }

        private void BtnNext_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ServiceLB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
