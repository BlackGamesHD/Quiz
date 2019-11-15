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
    public partial class TelaRanking : Form
    {
        public TelaRanking()
        {
            InitializeComponent();
        }

       

        private void TelaRanking_Load(object sender, EventArgs e)
        {
            this.leaderboardTableAdapter.Fill(this.quiz_AloDataSet.leaderboard);
        }

    }
}
