using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quiz
{
    public partial class TelaMenuInicio : Form
    {
        public TelaMenuInicio()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form _f1 = new TelaPerguntas();
            _f1.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form _f2 = new TelaCadastroQuestao();
            _f2.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form _f3 = new TelaRanking();
            _f3.Show();
        }
    }
}
