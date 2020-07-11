using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace AppQuanLyBanCafe
{
    public partial class frmMain : DevExpress.XtraEditors.XtraForm
    {
        public frmMain()
        {
            InitializeComponent();
            CustomizeDesign();
        }

        #region Custom and setup Menu
        public void CustomizeDesign()
        {
            pnQuanLyBanHang.Visible = false;
            pnQuanLyKho.Visible = false;
            pnQuanLyTaiKhoan.Visible = false;
        }

        public void HideSubMenu()
        {
            if (pnQuanLyBanHang.Visible == true)
                pnQuanLyBanHang.Visible = false;
            if (pnQuanLyKho.Visible == true)
                pnQuanLyKho.Visible = false;
            if (pnQuanLyTaiKhoan.Visible == true)
                pnQuanLyTaiKhoan.Visible = false;
        }

        public void showSubMenu(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                HideSubMenu();
                subMenu.Visible = true;
            }
            else
                subMenu.Visible = false;
        }
        #endregion

        private void btnQLBanHang_Click(object sender, EventArgs e)
        {
            showSubMenu(pnQuanLyBanHang);
        }

        private void btnQLKho_Click(object sender, EventArgs e)
        {
            showSubMenu(pnQuanLyKho);
        }

        private void btnQLTaiKhoan_Click(object sender, EventArgs e)
        {
            showSubMenu(pnQuanLyTaiKhoan);
        }

        private void imageEdit1_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void btnQLKhu_Click(object sender, EventArgs e)
        {
            openChildForm(new frmQuanLyKhu());
            showSubMenu(pnQuanLyBanHang);
        }

        private Form activeForm = null;
        public void openChildForm(Form childForm)
        {
            if (activeForm != null) activeForm.Close();
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            pnContainer.Controls.Add(childForm);
            pnContainer.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }
    }
}