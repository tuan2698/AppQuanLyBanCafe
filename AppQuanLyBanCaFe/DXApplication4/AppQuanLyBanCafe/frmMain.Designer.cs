namespace AppQuanLyBanCafe
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.panel3 = new System.Windows.Forms.Panel();
            this.panelLogo = new System.Windows.Forms.Panel();
            this.btnQuanLyBanHang = new DevExpress.XtraEditors.SimpleButton();
            this.pnQuanLyBanHang = new System.Windows.Forms.Panel();
            this.btnThucDon = new DevExpress.XtraEditors.SimpleButton();
            this.btnQuanLyKhu = new DevExpress.XtraEditors.SimpleButton();
            this.btnChiTiet = new DevExpress.XtraEditors.SimpleButton();
            this.panel4 = new System.Windows.Forms.Panel();
            this.btnNhomNguyenLieu = new DevExpress.XtraEditors.SimpleButton();
            this.btnNguyenLieu = new DevExpress.XtraEditors.SimpleButton();
            this.btnKhoNguyenLieu = new DevExpress.XtraEditors.SimpleButton();
            this.panel5 = new System.Windows.Forms.Panel();
            this.btnPhanQuyenTK = new DevExpress.XtraEditors.SimpleButton();
            this.btnThongTinTK = new DevExpress.XtraEditors.SimpleButton();
            this.btnQLTaiKhoan = new DevExpress.XtraEditors.SimpleButton();
            this.panel3.SuspendLayout();
            this.pnQuanLyBanHang.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel5.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.panel5);
            this.panel3.Controls.Add(this.btnQLTaiKhoan);
            this.panel3.Controls.Add(this.panel4);
            this.panel3.Controls.Add(this.btnKhoNguyenLieu);
            this.panel3.Controls.Add(this.pnQuanLyBanHang);
            this.panel3.Controls.Add(this.btnQuanLyBanHang);
            this.panel3.Controls.Add(this.panelLogo);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(264, 568);
            this.panel3.TabIndex = 0;
            // 
            // panelLogo
            // 
            this.panelLogo.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelLogo.Location = new System.Drawing.Point(0, 0);
            this.panelLogo.Name = "panelLogo";
            this.panelLogo.Size = new System.Drawing.Size(264, 69);
            this.panelLogo.TabIndex = 0;
            // 
            // btnQuanLyBanHang
            // 
            this.btnQuanLyBanHang.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnQuanLyBanHang.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnQuanLyBanHang.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("simpleButton2.ImageOptions.SvgImage")));
            this.btnQuanLyBanHang.Location = new System.Drawing.Point(0, 69);
            this.btnQuanLyBanHang.Name = "btnQuanLyBanHang";
            this.btnQuanLyBanHang.Size = new System.Drawing.Size(264, 38);
            this.btnQuanLyBanHang.TabIndex = 1;
            this.btnQuanLyBanHang.Text = "Quản lý bán hàng";
            // 
            // pnQuanLyBanHang
            // 
            this.pnQuanLyBanHang.Controls.Add(this.btnChiTiet);
            this.pnQuanLyBanHang.Controls.Add(this.btnQuanLyKhu);
            this.pnQuanLyBanHang.Controls.Add(this.btnThucDon);
            this.pnQuanLyBanHang.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnQuanLyBanHang.Location = new System.Drawing.Point(0, 107);
            this.pnQuanLyBanHang.Name = "pnQuanLyBanHang";
            this.pnQuanLyBanHang.Size = new System.Drawing.Size(264, 110);
            this.pnQuanLyBanHang.TabIndex = 2;
            // 
            // btnThucDon
            // 
            this.btnThucDon.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnThucDon.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnThucDon.Location = new System.Drawing.Point(0, 0);
            this.btnThucDon.Name = "btnThucDon";
            this.btnThucDon.Size = new System.Drawing.Size(264, 35);
            this.btnThucDon.TabIndex = 0;
            this.btnThucDon.Text = "Thực đơn";
            // 
            // btnQuanLyKhu
            // 
            this.btnQuanLyKhu.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnQuanLyKhu.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnQuanLyKhu.Location = new System.Drawing.Point(0, 35);
            this.btnQuanLyKhu.Name = "btnQuanLyKhu";
            this.btnQuanLyKhu.Size = new System.Drawing.Size(264, 35);
            this.btnQuanLyKhu.TabIndex = 1;
            this.btnQuanLyKhu.Text = "Quản lý khu";
            // 
            // btnChiTiet
            // 
            this.btnChiTiet.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnChiTiet.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnChiTiet.Location = new System.Drawing.Point(0, 70);
            this.btnChiTiet.Name = "btnChiTiet";
            this.btnChiTiet.Size = new System.Drawing.Size(264, 35);
            this.btnChiTiet.TabIndex = 2;
            this.btnChiTiet.Text = "Chi tiết bàn";
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.btnNhomNguyenLieu);
            this.panel4.Controls.Add(this.btnNguyenLieu);
            this.panel4.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel4.Location = new System.Drawing.Point(0, 255);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(264, 73);
            this.panel4.TabIndex = 4;
            // 
            // btnNhomNguyenLieu
            // 
            this.btnNhomNguyenLieu.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnNhomNguyenLieu.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnNhomNguyenLieu.Location = new System.Drawing.Point(0, 35);
            this.btnNhomNguyenLieu.Name = "btnNhomNguyenLieu";
            this.btnNhomNguyenLieu.Size = new System.Drawing.Size(264, 35);
            this.btnNhomNguyenLieu.TabIndex = 1;
            this.btnNhomNguyenLieu.Text = "Nhóm nguyên liệu";
            // 
            // btnNguyenLieu
            // 
            this.btnNguyenLieu.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnNguyenLieu.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnNguyenLieu.Location = new System.Drawing.Point(0, 0);
            this.btnNguyenLieu.Name = "btnNguyenLieu";
            this.btnNguyenLieu.Size = new System.Drawing.Size(264, 35);
            this.btnNguyenLieu.TabIndex = 0;
            this.btnNguyenLieu.Text = "Nguyên liệu";
            // 
            // btnKhoNguyenLieu
            // 
            this.btnKhoNguyenLieu.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnKhoNguyenLieu.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnKhoNguyenLieu.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("simpleButton8.ImageOptions.SvgImage")));
            this.btnKhoNguyenLieu.Location = new System.Drawing.Point(0, 217);
            this.btnKhoNguyenLieu.Name = "btnKhoNguyenLieu";
            this.btnKhoNguyenLieu.Size = new System.Drawing.Size(264, 38);
            this.btnKhoNguyenLieu.TabIndex = 3;
            this.btnKhoNguyenLieu.Text = "Kho nguyên liệu";
            // 
            // panel5
            // 
            this.panel5.Controls.Add(this.btnPhanQuyenTK);
            this.panel5.Controls.Add(this.btnThongTinTK);
            this.panel5.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel5.Location = new System.Drawing.Point(0, 366);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(264, 73);
            this.panel5.TabIndex = 6;
            // 
            // btnPhanQuyenTK
            // 
            this.btnPhanQuyenTK.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnPhanQuyenTK.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnPhanQuyenTK.Location = new System.Drawing.Point(0, 35);
            this.btnPhanQuyenTK.Name = "btnPhanQuyenTK";
            this.btnPhanQuyenTK.Size = new System.Drawing.Size(264, 35);
            this.btnPhanQuyenTK.TabIndex = 1;
            this.btnPhanQuyenTK.Text = "Phân quyền tài khoản";
            // 
            // btnThongTinTK
            // 
            this.btnThongTinTK.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnThongTinTK.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnThongTinTK.Location = new System.Drawing.Point(0, 0);
            this.btnThongTinTK.Name = "btnThongTinTK";
            this.btnThongTinTK.Size = new System.Drawing.Size(264, 35);
            this.btnThongTinTK.TabIndex = 0;
            this.btnThongTinTK.Text = "Thông tin tài khoản";
            // 
            // btnQLTaiKhoan
            // 
            this.btnQLTaiKhoan.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnQLTaiKhoan.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnQLTaiKhoan.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("simpleButton12.ImageOptions.SvgImage")));
            this.btnQLTaiKhoan.Location = new System.Drawing.Point(0, 328);
            this.btnQLTaiKhoan.Name = "btnQLTaiKhoan";
            this.btnQLTaiKhoan.Size = new System.Drawing.Size(264, 38);
            this.btnQLTaiKhoan.TabIndex = 5;
            this.btnQLTaiKhoan.Text = "Quản lý tài khoản";
            // 
            // frmMain
            // 
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(944, 568);
            this.Controls.Add(this.panel3);
            this.MinimumSize = new System.Drawing.Size(950, 600);
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmMain";
            this.panel3.ResumeLayout(false);
            this.pnQuanLyBanHang.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panel5.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panelQuanLyBanHang;
        private System.Windows.Forms.Button btnQuanLyBan;
        private System.Windows.Forms.Button btnChiTietBan;
        private System.Windows.Forms.Button btnMenu;
        private System.Windows.Forms.Button btnQLBanHang;
        private System.Windows.Forms.Panel panelQuanLyTaiKhoan;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.Panel panelQuanLyNguyenLieu;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button btnQuanLyNguyeLieu;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel5;
        private DevExpress.XtraEditors.SimpleButton btnPhanQuyenTK;
        private DevExpress.XtraEditors.SimpleButton btnThongTinTK;
        private DevExpress.XtraEditors.SimpleButton btnQLTaiKhoan;
        private System.Windows.Forms.Panel panel4;
        private DevExpress.XtraEditors.SimpleButton btnNhomNguyenLieu;
        private DevExpress.XtraEditors.SimpleButton btnNguyenLieu;
        private DevExpress.XtraEditors.SimpleButton btnKhoNguyenLieu;
        private System.Windows.Forms.Panel pnQuanLyBanHang;
        private DevExpress.XtraEditors.SimpleButton btnChiTiet;
        private DevExpress.XtraEditors.SimpleButton btnQuanLyKhu;
        private DevExpress.XtraEditors.SimpleButton btnThucDon;
        private DevExpress.XtraEditors.SimpleButton btnQuanLyBanHang;
        private System.Windows.Forms.Panel panelLogo;

    }
}

