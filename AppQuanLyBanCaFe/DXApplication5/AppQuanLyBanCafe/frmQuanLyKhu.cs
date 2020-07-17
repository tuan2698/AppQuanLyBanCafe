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
using DevExpress.XtraEditors;

namespace AppQuanLyBanCafe
{
    public partial class frmQuanLyKhu : Form
    {
        BanKhuVuc_BLL qlban = new BanKhuVuc_BLL();
        List<TabPage> lstTabPage = new List<TabPage>();
        List<SimpleButton> lstBan = new List<SimpleButton>();

        public int i = 0;
        int temp = 0;
        public frmQuanLyKhu()
        {
            InitializeComponent();
        }

        private void frmQuanLyKhu_Load(object sender, EventArgs e)
        {
            taoKhuVuc();
        }

        //void loadBan(string makhu)
        //{
        //    foreach (Ban b in qlban.getAllTableforArea(makhu))
        //    {
        //        SimpleButton btn = new SimpleButton() { Width = 100, Height = 100 };

        //        btn.Image = Image.FromFile("C:/Users/khiem/Desktop/AppQuanLyBanCafe/AppQuanLyBanCaFe/DXApplication5/AppQuanLyBanCafe/image/chuadat.png");
        //        btn.Text = b.TenBan;
        //        flpDSBan.Controls.Add(btn);
        //    }
        //}

        void taoKhuVuc()
        {
            foreach (KhuVuc k in qlban.getAllKhuVuc())
            {
                TabPage tp = new TabPage(k.MaKhuVuc);
                lstTabPage.Add(tp);
                tp.Width = this.Width / 2;
                tp.Text = k.MaKhuVuc;
                tp.BackColor = Color.Aqua;
                

                //qlban.getAllTableforArea(k.MaKhuVuc);
                foreach(Ban b in qlban.getAllTableforArea(k.MaKhuVuc))
                {
                    SimpleButton ban = new SimpleButton();
                    lstBan.Add(ban);
                    lstBan[i].Size = new Size(50, 50);
                    lstBan[i].BackColor = Color.Aqua;
                    lstBan[i].Name = b.MaBan.ToString().Trim();
                    lstBan[i].Text = b.TenBan.ToString();
                    lstBan[i].ImageOptions.Location = ImageLocation.MiddleCenter;
                    lstBan[i].AppearanceHovered.BackColor = Color.Red;
                    lstBan[i].AppearancePressed.BackColor = Color.Pink;
                    lstBan[i].ImageOptions.Image = global::AppQuanLyBanCafe.Properties.Resources.chuadat;
                    tp.Controls.Add(lstBan[i]);                    

                    if( i == temp)
                    {
                        lstBan[i].Location = new Point(30, 5);
                    }
                    else
                    {
                        if(lstBan[i-1 ].Location.X +150 >tp.Width)
                        {
                            lstBan[i].Location = new Point(30, lstBan[i - 1].Location.Y + 80);

                        }
                        else
                        {
                            lstBan[i].Location = new Point(lstBan[i - 1].Location.X + 80, lstBan[i - 1].Location.Y);
                        }
                    }
                    i++;
                }
                temp += qlban.getAllTableforArea(k.MaKhuVuc).Count;
                tp.Refresh();
                tabControl.Controls.Add(tp);
            }

        }

        private void groupControl3_Paint(object sender, PaintEventArgs e)
        {

        }

        //private void btnTang1_Click(object sender, EventArgs e)
        //{
        //    flpDSBan.Controls.Clear();
        //    string makhu = "T1";
        //    loadBan(makhu);
        //}

        //private void btnTang2_Click(object sender, EventArgs e)
        //{
        //    flpDSBan.Controls.Clear();
        //    string makhu = "T2";
        //    loadBan(makhu);
        //}

        //private void btnTang3_Click(object sender, EventArgs e)
        //{
        //    flpDSBan.Controls.Clear();
        //    string makhu = "T3";
        //    loadBan(makhu);

        //}

        //private void btnTang2_Click_1(object sender, EventArgs e)
        //{

        //}
    }
}
