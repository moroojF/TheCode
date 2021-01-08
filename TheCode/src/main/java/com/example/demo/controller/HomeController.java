package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	@RequestMapping("/")
    public String index() {
		return "HomePage.jsp";
    }
	@RequestMapping(value="/process", method=RequestMethod.POST)
    public String index2(@RequestParam(value="code") String userCode, RedirectAttributes redirectAttributes) {
		if (userCode.equals("bushido")) {
			return "redirect:/code";			
		}else {
			redirectAttributes.addFlashAttribute("error", "Error: The code is wrong!");
	        return "redirect:/";
		}
    }
}
