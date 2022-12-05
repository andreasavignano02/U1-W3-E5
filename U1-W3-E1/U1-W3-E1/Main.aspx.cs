using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace U1_W3_E1
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e) 
        {
            int sala = Convert.ToInt32(DropDownList1.SelectedValue);
            if (sala == 1) 
            {
                Archiviazione("SALA NORD");
            }
            else if (sala == 2) 
            {
                Archiviazione("SALA EST");
            }
            else if (sala == 3)
            {
                Archiviazione("SALA SUD");
            }
        }
        private void Archiviazione(string NomeSala) 
        {
            Prenotazione p = new Prenotazione();
            p.Nome = Nome.Text;
            p.Cognome = Cognome.Text;
            p.BighiettoRidotto = CheckBox1.Checked;
            p.SalaCinema = NomeSala;

            Prenotazione.ListaPrenotazioni.Add(p);

            ContaBiglietti();
        }

        private void ContaBiglietti() 
        {
            int VendutiA = 0;
            int RidottiA = 0; 
            int VendutiB = 0;
            int RidottiB = 0;
            int VendutiC = 0;
            int RidottiC = 0;
            foreach (Prenotazione p in Prenotazione.ListaPrenotazioni) 
            { 
                if(p.SalaCinema == "SALA NORD") 
                {
                    VendutiA += 1;
                    if (p.BighiettoRidotto == true) 
                    {
                        RidottiA += 1;
                    }
                }
                else if (p.SalaCinema == "SALA EST")
                {
                    VendutiB += 1;
                    if (p.BighiettoRidotto == true)
                    {
                        RidottiB += 1;
                    }
                }
                else if (p.SalaCinema == "SALA SUD")
                {
                    VendutiC += 1;
                    if (p.BighiettoRidotto == true)
                    {
                        RidottiC += 1;
                    }
                }
            }
        }
    }
        
    public class Prenotazione
        {
            private string _nome;
            public string Nome 
            { 
                get { return _nome; }
                set { _nome = value; }
            }
            private string _cognome;
            public string Cognome
            {
                get { return _cognome; }
                set { _cognome = value; }
            }
            private bool _bighiettoridotto;
            public bool BighiettoRidotto
            {
                get { return _bighiettoridotto; }
                set { _bighiettoridotto = value; }
            }
            private decimal _incassoprenotazione;
            public decimal IncassoPrenotazione
            {
                get { return _incassoprenotazione; }
                set { _incassoprenotazione = value; }
            }
            private string _salacinema;
            public string SalaCinema
            {
                get { return _salacinema; }
                set { _salacinema = value; }
            }
            private static List<Prenotazione> _listaprenotazioni = new List<Prenotazione>();

            public static List<Prenotazione> ListaPrenotazioni 
            {
                get { return _listaprenotazioni; }
                set { _listaprenotazioni = value; }
            }
    }
}