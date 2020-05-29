using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using DevExpress.XtraEditors;
using System.Windows.Forms;

namespace AppQuanLyBanCafe
{
    public partial class frmMain : DevExpress.XtraEditors.XtraForm
    {
        public frmMain()
        {
            InitializeComponent();
            //CustomizeDesign();
        }

        //public void CustomizeDesign()
        //{
        //    panelQuanLyBanHang.Visible = false;
        //    panelQuanLyNguyenLieu.Visible = false;
        //    panelQuanLyTaiKhoan.Visible = false;
        //}

        //public void HideSubMenu()
        //{
        //    if (panelQuanLyBanHang.Visible == true)
        //        panelQuanLyBanHang.Visible = false;
        //    if (panelQuanLyNguyenLieu.Visible == true)
        //        panelQuanLyNguyenLieu.Visible = false;
        //    if (panelQuanLyTaiKhoan.Visible == true)
        //        panelQuanLyTaiKhoan.Visible = false;
        //}

        //public void showSubMenu(Panel submenu)
        //{
        //    if (submenu.Visible == false)
        //    {
        //        HideSubMenu();
        //        submenu.Visible = true;
        //    }
        //    else
        //    {
        //        submenu.Visible = false;
        //    }
        //}

        //private void btnQLBanHang_Click(object sender, EventArgs e)
        //{
        //    showSubMenu(panelQuanLyBanHang);
        //}

        //private void btnQuanLyNguyeLieu_Click(object sender, EventArgs e)
        //{
        //    showSubMenu(panelQuanLyNguyenLieu);
        //}

        //private void button8_Click(object sender, EventArgs e)
        //{
        //    showSubMenu(panelQuanLyTaiKhoan);
        //}
    }
}
