using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quiz
{
    class DAO
    {
        public static SqlConnection conectar;
        public static SqlCommand comando;
        public static SqlDataReader dr;
        public static String conexaoUrl, pst, questao, alter1, alter2, alter3, alter4;
        public static int numero, correta;

        public static void conexao()
        {
            conexaoUrl = "Data Source= (local);" +
                  "initial catalog= Quiz_Alo;" +
                   "integrated security=sspi";
            conectar = new SqlConnection(conexaoUrl);
            conectar.Open();

        }
        public static void adicionar()
        {
            comando = new SqlCommand(pst, conectar);
            comando.ExecuteReader();
            conectar.Close();
        }

        public static void consultar()
        {
            comando = new SqlCommand(pst, conectar);
            dr = comando.ExecuteReader();
            if (dr.Read())
            {
                questao = dr[1].ToString();
                alter1 = dr[2].ToString();
                alter2 = dr[3].ToString();
                alter3 = dr[4].ToString();
                alter4 = dr[5].ToString();
                correta = Convert.ToInt32(dr[6]);
            }
            conectar.Close();
        }

        public static void obterNumeroQuestoes()
        {
            comando = new SqlCommand(pst, conectar);
            dr = comando.ExecuteReader();
            if (dr.Read())
            {
                numero = Convert.ToInt32(dr[0]);
            }
            conectar.Close();
        }

    }
}
