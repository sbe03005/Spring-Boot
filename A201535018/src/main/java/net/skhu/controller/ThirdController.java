package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Student;

@Controller
@RequestMapping("/third")
public class ThirdController {

	@RequestMapping("test1")
	public String test1(Model model) {
		model.addAttribute("student", new Student(1, "201535018", "박웅기", "sbe03005@naver.com"));

		return "third/test1";
	}

	@GetMapping("test2")
	public String test2(Model model) {
		model.addAttribute("student", new Student(0, "", "", ""));
		return "third/test2";
	}

	@PostMapping("test2")
	public String test2(Model model, Student student) {
		model.addAttribute("message", "저장되었습니다");
		return "third/test2";
	}
}
