package com.projexemplolistaform.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.projexemplolistaform.modelo.Produto;
import com.projexemplolistaform.view.ProdutoListView;

@Controller
@RequestMapping("/Produto")
public class ProdutoController {

	@RequestMapping("Novo")
	public String novo(Model model, HttpSession session){
		return "Produto/Novo";
	}
	
	@RequestMapping("Salvar")
	public String salvar(@ModelAttribute("listaProdutos") ProdutoListView produtoListView, Model model){
		
		List<Produto> produtos = new ArrayList<Produto>();
		
		for (Produto produto : produtoListView.getProduto()) {
			if (produto.getId() != 0 && produto.getDescricao() != null){
				produtos.add(produto);
			}
		}
		
		model.addAttribute("produtos", produtos);
		
		return "Produto/ListaProdutos";
	}
}


