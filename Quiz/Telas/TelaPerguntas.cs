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
    public partial class TelaPerguntas : Form
    {
        public static int acertos = 0;
        int contador=0, aleatorio, contador_respondidas=0;
        int[] id_questoes = new int[11];

        public TelaPerguntas()
        {
            InitializeComponent();
            obter_id_questoes();
            PuxarDadosBD(id_questoes[0]);
        }

        private void PuxarDadosBD(int id_questao)
        {
            DAO.conexao();
            DAO.pst = "select * from perguntas where idPergunta="+ id_questao;
            DAO.consultar();
            lblQuestao.Text = (contador_respondidas+1)+"-"+DAO.questao;
            lblAlterA.Text = DAO.alter1;
            lblAlterB.Text = DAO.alter2;
            lblAlterC.Text = DAO.alter3;
            lblAlterD.Text = DAO.alter4;
        }

        private void btnResponder_Click(object sender, EventArgs e)
        {
            if(contador_respondidas<9)
            {
                Verificar_resposta();
                PuxarDadosBD(id_questoes[contador_respondidas + 1]);
            }else if (contador_respondidas == 9)
            {
                Verificar_resposta();
                Form final = new TelaFinal();
                final.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Você terminou o quiz");
                this.Close();
            }
        }

        private void RegistrarAcerto()
        {
            acertos++;
        }

        private void Verificar_resposta()
        {
            if (radioButton1.Checked)
            {
                if (DAO.correta == 1)
                {
                    MessageBox.Show("Resposta correta");
                    RegistrarAcerto();
                }
                else
                {
                    MessageBox.Show("Resposta incorreta");
                }
                contador_respondidas++;
            }
            else if (radioButton2.Checked)
            {
                if (DAO.correta == 2)
                {
                    MessageBox.Show("Resposta correta");
                    RegistrarAcerto();
                }
                else
                {
                    MessageBox.Show("Resposta incorreta");
                }
                contador_respondidas++;
            }
            else if (radioButton3.Checked)
            {
                if (DAO.correta == 3)
                {
                    MessageBox.Show("Resposta correta");
                    RegistrarAcerto();
                }
                else
                {
                    MessageBox.Show("Resposta incorreta");
                }
                contador_respondidas++;
            }
            else if (radioButton4.Checked)
            {
                if (DAO.correta == 4)
                {
                    MessageBox.Show("Resposta correta");
                    RegistrarAcerto();
                }
                else
                {
                    MessageBox.Show("Resposta incorreta");
                }
                contador_respondidas++;
            }
            else
            {
                MessageBox.Show("Por favor, escolha uma alternativa");
            }
        }

        private int RandomNumber(int min, int max)
        {
            Random random = new Random();
            return random.Next(min, max);
        }


        private void obter_id_questoes()
        {
            DAO.conexao();
            DAO.pst = "select * from quantidade_perguntas";
            DAO.obterNumeroQuestoes();
            int limite = DAO.numero+1;
            do
            {
                aleatorio = RandomNumber(1, limite);
                int pos = Array.IndexOf(id_questoes, aleatorio);
                if (pos > -1)
                {
                }
                else
                {
                    id_questoes[contador] = aleatorio;
                    contador++;
                }
            } while (contador <= 10);
        }

    }
}
