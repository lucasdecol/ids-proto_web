package br.com.caelum.contas.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.caelum.contas.dao.ContaDAO;
import br.com.caelum.contas.modelo.Conta;

@Controller
public class ContasController {

	private ContaDAO dao;
	
	/*
	@Autowired
	public ContasController(ContaDAO dao) {
		this.dao = dao;
	}
	
	*/
	
	public ContasController() {
		this.dao = new ContaDAO();
	}
	
	@RequestMapping("cria")
	public String formContas() {
		return "conta/cria";
	}

	@RequestMapping("adiciona")
	public String adicionaConta(@Valid Conta conta, BindingResult result) {

		// se tiver erro, redirecione para o formulário
		if (result.hasErrors()) {
			return "conta/cria";
		}

		dao = new ContaDAO();
		dao.adiciona(conta);

		return "redirect:lista";
	}

	@RequestMapping("/mostra")
	public String mostra(Long id, Model model) {
		dao = new ContaDAO();
		model.addAttribute("conta", dao.buscaPorId(id));
		return "conta/mostra";
	}

	@RequestMapping("/lista")
	public ModelAndView lista() {
		dao = new ContaDAO();
		List<Conta> contas = dao.lista();

		ModelAndView mv = new ModelAndView("conta/lista");
		mv.addObject("contas", contas);
		return mv;
	}

	@RequestMapping("/remove")
	public String remove(Conta conta) {
		dao = new ContaDAO();
		dao.remove(conta);
		return "redirect:lista";
	}

	@RequestMapping("/altera")
	public String altera(@Valid Conta conta, BindingResult result) {

		// se tiver erro, redirecione para o formulário
		if (result.hasErrors()) {
			return "conta/mostra";
		}
		dao = new ContaDAO();
		dao.altera(conta);
		return "redirect:lista";
	}

	@RequestMapping("/paga")
	public void finaliza(Long id, HttpServletResponse response) {
		dao = new ContaDAO();
		dao.paga(id);
		response.setStatus(200);
	}

}