namespace AppQuanLyBanCafe
{
    partial class frmQuanLyKhu
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmQuanLyKhu));
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.btnChonMua = new DevExpress.XtraEditors.SimpleButton();
            this.btnTraLai = new DevExpress.XtraEditors.SimpleButton();
            this.btnChuyenBan = new DevExpress.XtraEditors.SimpleButton();
            this.btnDatBan = new DevExpress.XtraEditors.SimpleButton();
            this.btnGopBan = new DevExpress.XtraEditors.SimpleButton();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.groupControl3 = new DevExpress.XtraEditors.GroupControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.btnXuatHoaDon = new DevExpress.XtraEditors.SimpleButton();
            this.groupControl4 = new DevExpress.XtraEditors.GroupControl();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).BeginInit();
            this.groupControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl4)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(2, 39);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(543, 312);
            this.tabControl.TabIndex = 4;
            // 
            // groupControl1
            // 
            this.groupControl1.Controls.Add(this.btnDatBan);
            this.groupControl1.Controls.Add(this.btnGopBan);
            this.groupControl1.Controls.Add(this.btnChuyenBan);
            this.groupControl1.Controls.Add(this.btnTraLai);
            this.groupControl1.Controls.Add(this.btnChonMua);
            this.groupControl1.Location = new System.Drawing.Point(12, 12);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(170, 353);
            this.groupControl1.TabIndex = 5;
            // 
            // btnChonMua
            // 
            this.btnChonMua.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnChonMua.ImageOptions.SvgImage")));
            this.btnChonMua.Location = new System.Drawing.Point(7, 49);
            this.btnChonMua.Name = "btnChonMua";
            this.btnChonMua.Size = new System.Drawing.Size(158, 40);
            this.btnChonMua.TabIndex = 0;
            this.btnChonMua.Text = "Chọn mua";
            // 
            // btnTraLai
            // 
            this.btnTraLai.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnTraLai.ImageOptions.SvgImage")));
            this.btnTraLai.Location = new System.Drawing.Point(7, 107);
            this.btnTraLai.Name = "btnTraLai";
            this.btnTraLai.Size = new System.Drawing.Size(158, 40);
            this.btnTraLai.TabIndex = 1;
            this.btnTraLai.Text = "Trả lại";
            // 
            // btnChuyenBan
            // 
            this.btnChuyenBan.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnChuyenBan.ImageOptions.SvgImage")));
            this.btnChuyenBan.Location = new System.Drawing.Point(7, 165);
            this.btnChuyenBan.Name = "btnChuyenBan";
            this.btnChuyenBan.Size = new System.Drawing.Size(158, 40);
            this.btnChuyenBan.TabIndex = 2;
            this.btnChuyenBan.Text = "Chuyển bàn";
            // 
            // btnDatBan
            // 
            this.btnDatBan.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnDatBan.ImageOptions.SvgImage")));
            this.btnDatBan.Location = new System.Drawing.Point(5, 281);
            this.btnDatBan.Name = "btnDatBan";
            this.btnDatBan.Size = new System.Drawing.Size(158, 40);
            this.btnDatBan.TabIndex = 4;
            this.btnDatBan.Text = "Đặt bàn";
            // 
            // btnGopBan
            // 
            this.btnGopBan.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnGopBan.ImageOptions.SvgImage")));
            this.btnGopBan.Location = new System.Drawing.Point(5, 223);
            this.btnGopBan.Name = "btnGopBan";
            this.btnGopBan.Size = new System.Drawing.Size(158, 40);
            this.btnGopBan.TabIndex = 3;
            this.btnGopBan.Text = "Gộp bàn";
            // 
            // groupControl2
            // 
            this.groupControl2.CaptionImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("groupControl2.CaptionImageOptions.SvgImage")));
            this.groupControl2.Controls.Add(this.btnXuatHoaDon);
            this.groupControl2.Controls.Add(this.labelControl1);
            this.groupControl2.Location = new System.Drawing.Point(190, 371);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(545, 100);
            this.groupControl2.TabIndex = 6;
            this.groupControl2.Text = "Tính tiền";
            // 
            // groupControl3
            // 
            this.groupControl3.CaptionImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("groupControl3.CaptionImageOptions.SvgImage")));
            this.groupControl3.Controls.Add(this.tabControl);
            this.groupControl3.Location = new System.Drawing.Point(188, 12);
            this.groupControl3.Name = "groupControl3";
            this.groupControl3.Size = new System.Drawing.Size(547, 353);
            this.groupControl3.TabIndex = 7;
            this.groupControl3.Text = "Danh sách bàn";
            this.groupControl3.Paint += new System.Windows.Forms.PaintEventHandler(this.groupControl3_Paint);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(5, 42);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(45, 13);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Tổng tiền";
            // 
            // btnXuatHoaDon
            // 
            this.btnXuatHoaDon.Location = new System.Drawing.Point(422, 42);
            this.btnXuatHoaDon.Name = "btnXuatHoaDon";
            this.btnXuatHoaDon.Size = new System.Drawing.Size(88, 53);
            this.btnXuatHoaDon.TabIndex = 1;
            this.btnXuatHoaDon.Text = "Xuất hóa đơn";
            // 
            // groupControl4
            // 
            this.groupControl4.Location = new System.Drawing.Point(741, 12);
            this.groupControl4.Name = "groupControl4";
            this.groupControl4.Size = new System.Drawing.Size(233, 353);
            this.groupControl4.TabIndex = 8;
            this.groupControl4.Text = "Chi tiết bàn";
            // 
            // frmQuanLyKhu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(986, 481);
            this.Controls.Add(this.groupControl4);
            this.Controls.Add(this.groupControl3);
            this.Controls.Add(this.groupControl2);
            this.Controls.Add(this.groupControl1);
            this.Name = "frmQuanLyKhu";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmQuanLyKhu";
            this.Load += new System.EventHandler(this.frmQuanLyKhu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            this.groupControl2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).EndInit();
            this.groupControl3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl4)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.TabControl tabControl;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.SimpleButton btnDatBan;
        private DevExpress.XtraEditors.SimpleButton btnGopBan;
        private DevExpress.XtraEditors.SimpleButton btnChuyenBan;
        private DevExpress.XtraEditors.SimpleButton btnTraLai;
        private DevExpress.XtraEditors.SimpleButton btnChonMua;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.SimpleButton btnXuatHoaDon;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.GroupControl groupControl3;
        private DevExpress.XtraEditors.GroupControl groupControl4;
    }
}