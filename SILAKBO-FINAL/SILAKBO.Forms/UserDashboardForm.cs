using SILAKBO_FINAL.SILAKBO.Forms;
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
    public partial class UserDashboardForm : Form
    {
        private User user;
        public UserDashboardForm(User loggedInUser)
        {
            InitializeComponent();
            user = loggedInUser;
            lblWelcome.Text = $"Welcome {user.Name}";
        }

        private void btnMyProfile_Click(object sender, EventArgs e) => new MyProfileForm(user).ShowDialog();
        private void btnSubmitReport_Click(object sender, EventArgs e) => new SubmitReportForm(user).ShowDialog();
        private void btnTrackCase_Click(object sender, EventArgs e) => new TrackCaseForm(user).ShowDialog();
        private void btnSupportResources_Click(object sender, EventArgs e) => new SupportResourcesForm().ShowDialog();
        private void btnLogout_Click(object sender, EventArgs e)
        {
            this.Hide();
            new LoginForm().Show();
        }
    }
}
