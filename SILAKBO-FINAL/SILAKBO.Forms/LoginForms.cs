using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using SILAKBO_FINAL.SILAKBO.Models;

namespace SILAKBO_FINAL.SILAKBO.Forms
{
    public partial class LoginForms : Form
    {
        private AuthService authService = new AuthService();

        public LoginForms()
        {
            InitializeComponent();
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            this.Hide();
            new RegisterForm().Show();
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Clear();
            txtPassword.Clear();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            User user = authService.Login(username, password);

            if (user != null)
            {
                if (user.Role == "Admin")
                {
                    new AdminDashboard().Show();  // Open admin dashboard
                    this.Hide();
                }
                else
                {
                    new UserDashboardForm(user).Show(); // Open user/victim dashboard
                    this.Hide();
                }
            }
            else
            {
                MessageBox.Show("Invalid username or password");
            }
        }

        private void chkShowPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (chkShowPassword.Checked)
            {
                txtPassword.UseSystemPasswordChar = false; // show password
            }
            else
            {
                txtPassword.UseSystemPasswordChar = true; // hide password
            }

        }
    }

}
