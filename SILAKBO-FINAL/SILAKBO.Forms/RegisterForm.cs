using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

using SILAKBO_FINAL.SILAKBO.Models;
using System.Xml.Linq;


namespace SILAKBO_FINAL.SILAKBO.Forms
{
    public partial class RegisterForm : Form
    {
        private AuthService authService = new AuthService();

        public RegisterForm()
        {
            InitializeComponent();
            comboGender.Items.Add("Female");
            comboGender.SelectedIndex = 0;
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            User user = new User
            {
                Name = txtName.Text.Trim(),
                Username = txtUsername.Text.Trim(),
                Password = txtPassword.Text.Trim(),
                Gender = comboGender.SelectedItem.ToString(),
                Birthday = dtpBirthday.Value,
                Role = "User"
            };
            authService.Register(user);
            MessageBox.Show("Registration successful!");
            this.Hide();
            new LoginForm().Show();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            this.Hide();
            new LoginForm().Show();
        }
    }

    internal class LoginForm
    {
        public LoginForm()
        {
        }

        internal void Show()
        {
            throw new NotImplementedException();
        }
    }
}
