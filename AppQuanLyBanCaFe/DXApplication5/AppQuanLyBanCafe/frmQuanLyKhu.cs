using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL_ALL;

namespace AppQuanLyBanCafe
{
    public partial class frmQuanLyKhu : Form
    {
        BanKhuVuc_BLL qlban = new BanKhuVuc_BLL();
        public frmQuanLyKhu()
        {
            InitializeComponent();
        }

        private void frmQuanLyKhu_Load(object sender, EventArgs e)
        {

        }

        void loadBan(string makhu)
        {
            foreach (Ban b in qlban.getAllTableforArea(makhu))
            {
                Button btn = new Button() { Width = 100, Height = 100 };
                btn.Text = b.TenBan + Environment.NewLine + b.TrangThai;
                btn.Image = Image.FromFile("C:\\Users\\khiem\\Desktop\\AppQuanLyBanCafe\\AppQuanLyBanCaFe\\DXApplication5\\AppQuanLyBanCafe\\image\\cof.png");
                btn.ImageAlign = ContentAlignment.MiddleRight;
                btn.TextAlign = ContentAlignment.MiddleLeft;
                //btn.SizeMode = PictureBoxSizeMode.StretchImage;
                flpDSBan.Controls.Add(btn);
            }
        }

        private void btnTang1_Click(object sender, EventArgs e)
        {
            flpDSBan.Controls.Clear();
            string makhu = "T1";
            loadBan(makhu);
        }

        private void btnTang2_Click(object sender, EventArgs e)
        {
            flpDSBan.Controls.Clear();
            string makhu = "T2";
            loadBan(makhu);
        }

        private void btnTang3_Click(object sender, EventArgs e)
        {
            flpDSBan.Controls.Clear();
            string makhu = "T3";
            loadBan(makhu);

        }

        private void btnTang2_Click_1(object sender, EventArgs e)
        {

        }
    }
}
