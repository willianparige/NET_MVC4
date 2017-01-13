using Exemplo1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Exemplo1.Controllers
{
    public class HomeController : Controller
    {

        public List<Estado> listaEstado()
        {
            List<Estado> listaEstado = new List<Estado>();
            Estado estado = new Estado();
            estado.Uf = "SP";
            estado.Nome = "São Paulo";
            listaEstado.Add(estado);

            Estado estado1 = new Estado();
            estado1.Uf = "RJ";
            estado1.Nome = "Rio de Janeiro";
            listaEstado.Add(estado1);

            Estado estado2 = new Estado();
            estado2.Uf = "PR";
            estado2.Nome = "Paraná";
            listaEstado.Add(estado2);

            return listaEstado;
        }

        public List<Cidade> listaCidade()
        {
            List<Cidade> listaCidade = new List<Cidade>();
            Cidade cidade = new Cidade();
            cidade.Uf = "SP";
            cidade.Nome = "São Paulo";
            listaCidade.Add(cidade);

            Cidade cidade1 = new Cidade();
            cidade1.Uf = "SP";
            cidade1.Nome = "Campinas";
            listaCidade.Add(cidade1);

            Cidade cidade2 = new Cidade();
            cidade2.Uf = "RJ";
            cidade2.Nome = "Rio de Janeiro";
            listaCidade.Add(cidade2);

            Cidade cidade3 = new Cidade();
            cidade3.Uf = "RJ";
            cidade3.Nome = "Parati";
            listaCidade.Add(cidade3);

            Cidade cidade4 = new Cidade();
            cidade4.Uf = "PR";
            cidade4.Nome = "Curitiba";
            listaCidade.Add(cidade4);

            Cidade cidade5 = new Cidade();
            cidade5.Uf = "PR";
            cidade5.Nome = "Londrina";
            listaCidade.Add(cidade5);

            return listaCidade;
        }

        public ActionResult Index()
        {
            ViewBag.Estado = new SelectList(listaEstado(),"UF","Nome");
            ViewBag.Cidade = null;            

            return View();
        }

        [HttpPost]
        public JsonResult carregaCidade(String uf)
        {
            return Json (listaCidade().Where(x => x.Uf == uf));
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
