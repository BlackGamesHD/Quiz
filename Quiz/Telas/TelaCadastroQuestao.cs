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
    public partial class TelaCadastroQuestao : Form
    {
        public TelaCadastroQuestao()
        {
            InitializeComponent();
        }
        private int alterCorreta;
        private void button1_Click(object sender, EventArgs e)
        {
            if (txtAlternativaD.Text != "" && txtAlternativaC.Text != "" && txtAlternativaB.Text != "" && txtAlternativaA.Text != "" && txtQuestao.Text != "")
            {
                VerificarRadioSelecionado();

            }
            else
            {
                MessageBox.Show("Preencha todos os campos");
            }
    }

        private void cadastrarPergunta()
        {
            DAO.conexao();
            DAO.pst = "insert into perguntas(pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, resposta) values ('" + txtQuestao.Text + "','" + txtAlternativaA.Text + "','" + txtAlternativaB.Text + "','" + txtAlternativaC.Text + "','" + txtAlternativaD.Text + "'," + alterCorreta + ")";
            DAO.adicionar();
            RegistrarNumeroQuestoes();
            MessageBox.Show("Cadastro realizado com sucesso");
            txtQuestao.Text = "";
            txtAlternativaA.Text = "";
            txtAlternativaB.Text = "";
            txtAlternativaC.Text = "";
            txtAlternativaD.Text = "";
        }

        private void RegistrarNumeroQuestoes()
        {
            DAO.conexao();
            DAO.pst = "update quantidade_perguntas set quantidade = quantidade + 1";
            DAO.adicionar();
        }

        private void VerificarRadioSelecionado()
        {
            if (radioButton1.Checked == true)
            {
                alterCorreta = 1;
                cadastrarPergunta();
            }
            else if (radioButton2.Checked == true)
            {
                alterCorreta = 2;
                cadastrarPergunta();
            }
            else if (radioButton3.Checked == true)
            {
                alterCorreta = 3;
                cadastrarPergunta();
            }
            else if (radioButton4.Checked == true)
            {
                alterCorreta = 4;
                cadastrarPergunta();
            }
            else{
                MessageBox.Show("Por favor, selecione a alternativa correta");
            }
        }
    }
}
