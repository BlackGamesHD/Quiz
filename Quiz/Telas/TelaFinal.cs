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
    public partial class TelaFinal : Form
    {
        public TelaFinal()
        {
            InitializeComponent();
            label1.Text = "Você terminou o quiz e acertou um total de 0 questões, deseja enviar sua pontuação?(Se sim, preencha o campo abaixo com seu nome])";
        }

        private void btnNao_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnSim_Click(object sender, EventArgs e)
        {
            DAO.conexao();
            DAO.pst = "insert into leaderboard(nome, score) values('"+txtNome.Text+"', "+TelaPerguntas.acertos+");";
            DAO.adicionar();
            MessageBox.Show("Cadastrado no ranking com sucesso");
            this.Close();
        }
    }
}
