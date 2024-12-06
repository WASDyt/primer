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
    /// Логика взаимодействия для PageAuthorisation.xaml
    /// </summary>
    public partial class PageAuthorisation : Page
    {
        public PageAuthorisation()
        {
            InitializeComponent();
        }

        private void btnAuth_Click(object sender, RoutedEventArgs e)
        {
            string login = txtLogin.Text;
            string password = psbPassword.Password;
            using (TradeContext tradeContext = new TradeContext())
            {
                bool flag = false;
                foreach (User user in tradeContext.Users.ToList())
                    if (user.UserLogin == login)
                        if (user.UserPassword == password)
                        {
                            MessageBox.Show("Пользователь авторизован");
                          
                            flag = true;
                            ClassHelper.frmNavigate.Navigate(new PageListProducts(user));
                        }
                if (!flag)
                {
                    MessageBox.Show("Пользователь не авторизован");
                }
            }
        }
    }
}
