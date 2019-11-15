namespace Quiz
{
    partial class TelaPerguntas
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
            this.lblQuestao = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lblAlterD = new System.Windows.Forms.Label();
            this.lblAlterC = new System.Windows.Forms.Label();
            this.lblAlterB = new System.Windows.Forms.Label();
            this.lblAlterA = new System.Windows.Forms.Label();
            this.radioButton4 = new System.Windows.Forms.RadioButton();
            this.radioButton3 = new System.Windows.Forms.RadioButton();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.btnResponder = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblQuestao
            // 
            this.lblQuestao.AutoSize = true;
            this.lblQuestao.Location = new System.Drawing.Point(13, 24);
            this.lblQuestao.Name = "lblQuestao";
            this.lblQuestao.Size = new System.Drawing.Size(258, 13);
            this.lblQuestao.TabIndex = 0;
            this.lblQuestao.Text = "Suposta pergunta... Blah... Blah.... Blah... Deu errado";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lblAlterD);
            this.groupBox1.Controls.Add(this.lblAlterC);
            this.groupBox1.Controls.Add(this.lblAlterB);
            this.groupBox1.Controls.Add(this.lblAlterA);
            this.groupBox1.Controls.Add(this.radioButton4);
            this.groupBox1.Controls.Add(this.radioButton3);
            this.groupBox1.Controls.Add(this.radioButton2);
            this.groupBox1.Controls.Add(this.radioButton1);
            this.groupBox1.Location = new System.Drawing.Point(16, 108);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(702, 206);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Alternativas";
            // 
            // lblAlterD
            // 
            this.lblAlterD.AutoSize = true;
            this.lblAlterD.Location = new System.Drawing.Point(28, 155);
            this.lblAlterD.Name = "lblAlterD";
            this.lblAlterD.Size = new System.Drawing.Size(13, 13);
            this.lblAlterD.TabIndex = 7;
            this.lblAlterD.Text = "d";
            // 
            // lblAlterC
            // 
            this.lblAlterC.AutoSize = true;
            this.lblAlterC.Location = new System.Drawing.Point(28, 116);
            this.lblAlterC.Name = "lblAlterC";
            this.lblAlterC.Size = new System.Drawing.Size(13, 13);
            this.lblAlterC.TabIndex = 6;
            this.lblAlterC.Text = "c";
            // 
            // lblAlterB
            // 
            this.lblAlterB.AutoSize = true;
            this.lblAlterB.Location = new System.Drawing.Point(28, 76);
            this.lblAlterB.Name = "lblAlterB";
            this.lblAlterB.Size = new System.Drawing.Size(13, 13);
            this.lblAlterB.TabIndex = 5;
            this.lblAlterB.Text = "b";
            // 
            // lblAlterA
            // 
            this.lblAlterA.AutoSize = true;
            this.lblAlterA.Location = new System.Drawing.Point(28, 37);
            this.lblAlterA.Name = "lblAlterA";
            this.lblAlterA.Size = new System.Drawing.Size(13, 13);
            this.lblAlterA.TabIndex = 4;
            this.lblAlterA.Text = "a";
            // 
            // radioButton4
            // 
            this.radioButton4.AutoSize = true;
            this.radioButton4.Location = new System.Drawing.Point(7, 155);
            this.radioButton4.Name = "radioButton4";
            this.radioButton4.Size = new System.Drawing.Size(14, 13);
            this.radioButton4.TabIndex = 3;
            this.radioButton4.TabStop = true;
            this.radioButton4.UseVisualStyleBackColor = true;
            // 
            // radioButton3
            // 
            this.radioButton3.AutoSize = true;
            this.radioButton3.Location = new System.Drawing.Point(7, 116);
            this.radioButton3.Name = "radioButton3";
            this.radioButton3.Size = new System.Drawing.Size(14, 13);
            this.radioButton3.TabIndex = 2;
            this.radioButton3.TabStop = true;
            this.radioButton3.UseVisualStyleBackColor = true;
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Location = new System.Drawing.Point(7, 76);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(14, 13);
            this.radioButton2.TabIndex = 1;
            this.radioButton2.TabStop = true;
            this.radioButton2.UseVisualStyleBackColor = true;
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Location = new System.Drawing.Point(7, 37);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(14, 13);
            this.radioButton1.TabIndex = 0;
            this.radioButton1.TabStop = true;
            this.radioButton1.UseVisualStyleBackColor = true;
            // 
            // btnResponder
            // 
            this.btnResponder.Location = new System.Drawing.Point(306, 343);
            this.btnResponder.Name = "btnResponder";
            this.btnResponder.Size = new System.Drawing.Size(75, 23);
            this.btnResponder.TabIndex = 2;
            this.btnResponder.Text = "Responder";
            this.btnResponder.UseVisualStyleBackColor = true;
            this.btnResponder.Click += new System.EventHandler(this.btnResponder_Click);
            // 
            // Perguntas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(735, 378);
            this.Controls.Add(this.btnResponder);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.lblQuestao);
            this.Name = "Perguntas";
            this.Text = "Perguntas";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblQuestao;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lblAlterD;
        private System.Windows.Forms.Label lblAlterC;
        private System.Windows.Forms.Label lblAlterB;
        private System.Windows.Forms.Label lblAlterA;
        private System.Windows.Forms.RadioButton radioButton4;
        private System.Windows.Forms.RadioButton radioButton3;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.Button btnResponder;
    }
}