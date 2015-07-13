package br.inf.ids.idssaude.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OlaMundoController {

	@RequestMapping("/olaMundo")
	public String olaMundo() {
		return "olaMundo";
	}
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/sobre")
	public String sobre() {
		return "sobre";
	}
	
	@RequestMapping("/sistema")
	public String sistema() {
		return "sistema";
	}
	
}
