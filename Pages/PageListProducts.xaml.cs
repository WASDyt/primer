using Microsoft.EntityFrameworkCore;
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
using WpfAppTrade.Classes;

namespace WpfAppTrade.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageListProducts.xaml
    /// </summary>
    public partial class PageListProducts : Page
    {
        TradeContext tradeContext = new TradeContext();
        public PageListProducts(User user)
        {
            InitializeComponent();
            txbFIO.Text = user.UserSurname + " " + user.UserName + " " + user.UserPatronymic;
            //TradeContext tradeContext = new TradeContext();
            lstViewProducts.ItemsSource = tradeContext.Products.Include(t=>t.Manufacturer).ToList();

            //список производителей
            cmbManufact.Items.Add("Все производители");
            foreach (Manufacturer man in tradeContext.Manufacturers)
            {
                cmbManufact.Items.Add(man.Name);
            }
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            ClassHelper.frmNavigate.Navigate(new PageAddEdit(null));
        }
        ///<summary>
        /// поиск
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void txtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            string searchLine = txtSearch.Text;
           // TradeContext tradeContext = new TradeContext();
            if (!string.IsNullOrEmpty(searchLine))
            {
                lstViewProducts.ItemsSource = tradeContext.Products.Include(t => t.Manufacturer).
                Where(n => n.ProductName.Contains(searchLine) ||
                n.ProductDescription.Contains(searchLine) ||
                n.ProductCost.ToString() == searchLine).ToList();
            }
            else
            {
                lstViewProducts.ItemsSource = tradeContext.Products.Include(t => t.Manufacturer).ToList();
            }
        }
        /// <summary>
        /// сортировка
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void rbtDown_Checked(object sender, RoutedEventArgs e)
        {
           // TradeContext tradeContext = new TradeContext();
            lstViewProducts.ItemsSource = tradeContext.Products.Include(t => t.Manufacturer).OrderByDescending(x=>x.ProductCost).ToList();
        }

        private void rbtUp_Checked(object sender, RoutedEventArgs e)
        {
            TradeContext tradeContext = new TradeContext();
            lstViewProducts.ItemsSource = tradeContext.Products.Include(t => t.Manufacturer).OrderBy(x => x.ProductCost).ToList();

        }
        /// <summary>
        /// фильтрация по производителю
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cmbManufact_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
           // TradeContext tradeContext = new TradeContext();
            int numberManufacturer;

            string nameManufacturer = cmbManufact.SelectedItem.ToString();
                        
            if (nameManufacturer == "Все производители")
                numberManufacturer = 0;
            else
                numberManufacturer = tradeContext.Manufacturers.FirstOrDefault
                    (t => t.Name == nameManufacturer).ManufacturerId;
            if (numberManufacturer == 0)
            {
                lstViewProducts.ItemsSource = tradeContext.Products.Include
                    (t => t.Manufacturer).ToList();
            }
            else
            {
                lstViewProducts.ItemsSource = tradeContext.Products.Include
                    (t => t.Manufacturer).Where(x => x.ManufacturerId == numberManufacturer).ToList();
            }
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            // удаление нескольких товаров
            var productForRemoving = lstViewProducts.SelectedItems.Cast<Product>().ToList();
            if (MessageBox.Show($"Удалить {productForRemoving} товаров?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    tradeContext.Products.RemoveRange(productForRemoving);
                    tradeContext.SaveChanges();
                    MessageBox.Show("Данные удалены");
                    lstViewProducts.ItemsSource = tradeContext.Products.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }
    }
}
