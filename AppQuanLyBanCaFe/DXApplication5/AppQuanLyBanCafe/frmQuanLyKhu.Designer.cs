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
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.flpDSBan = new System.Windows.Forms.FlowLayoutPanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnTang3 = new DevExpress.XtraEditors.SimpleButton();
            this.btnTang2 = new DevExpress.XtraEditors.SimpleButton();
            this.btnTang1 = new DevExpress.XtraEditors.SimpleButton();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // flpDSBan
            // 
            this.flpDSBan.AutoScroll = true;
            this.flpDSBan.Location = new System.Drawing.Point(13, 45);
            this.flpDSBan.Name = "flpDSBan";
            this.flpDSBan.Size = new System.Drawing.Size(592, 418);
            this.flpDSBan.TabIndex = 3;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnTang3);
            this.panel1.Controls.Add(this.btnTang2);
            this.panel1.Controls.Add(this.btnTang1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(967, 39);
            this.panel1.TabIndex = 4;
            // 
            // btnTang3
            // 
            this.btnTang3.Location = new System.Drawing.Point(242, 12);
            this.btnTang3.Name = "btnTang3";
            this.btnTang3.Size = new System.Drawing.Size(75, 23);
            this.btnTang3.TabIndex = 5;
            this.btnTang3.Text = "Tầng 3";
            this.btnTang3.Click += new System.EventHandler(this.btnTang3_Click);
            // 
            // btnTang2
            // 
            this.btnTang2.Location = new System.Drawing.Point(132, 12);
            this.btnTang2.Name = "btnTang2";
            this.btnTang2.Size = new System.Drawing.Size(75, 23);
            this.btnTang2.TabIndex = 4;
            this.btnTang2.Text = "Tầng 2";
            this.btnTang2.Click += new System.EventHandler(this.btnTang2_Click);
            // 
            // btnTang1
            // 
            this.btnTang1.Location = new System.Drawing.Point(20, 12);
            this.btnTang1.Name = "btnTang1";
            this.btnTang1.Size = new System.Drawing.Size(75, 23);
            this.btnTang1.TabIndex = 3;
            this.btnTang1.Text = "Tầng 1";
            this.btnTang1.Click += new System.EventHandler(this.btnTang1_Click);
            // 
            // frmQuanLyKhu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(967, 463);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.flpDSBan);
            this.Name = "frmQuanLyKhu";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmQuanLyKhu";
            this.Load += new System.EventHandler(this.frmQuanLyKhu_Load);
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.FlowLayoutPanel flpDSBan;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.SimpleButton btnTang3;
        private DevExpress.XtraEditors.SimpleButton btnTang2;
        private DevExpress.XtraEditors.SimpleButton btnTang1;
    }
}