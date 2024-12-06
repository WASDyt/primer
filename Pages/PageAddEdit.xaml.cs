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
    /// Логика взаимодействия для PageAddEdit.xaml
    /// </summary>
    public partial class PageAddEdit : Page
    {
        private TradeContext tradeContext = new TradeContext();
        private Product _product = new Product();
        public PageAddEdit(Product product)
        {
            InitializeComponent();

            cmbCategory.ItemsSource = tradeContext.ProductCategories.ToList();
            cmbCategory.SelectedValuePath = "ProductCategoryId";
            cmbCategory.DisplayMemberPath = "Name";

            if (product != null)
            {
                _product = product;
                DataContext = _product;
            }
        }
    }
}
