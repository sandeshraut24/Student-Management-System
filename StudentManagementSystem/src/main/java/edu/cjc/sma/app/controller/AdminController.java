package edu.cjc.sma.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.sma.app.model.Student;
import edu.cjc.sma.app.service.StudentInt;

@Controller
public class AdminController {
	@Autowired
	StudentInt I;
	
	
	@RequestMapping("/")
	public String prelogin() {
		return "login";

	}

	@RequestMapping("login")
	public String onlogin(@RequestParam("username") String username, @RequestParam("password") String password,
			Model m) {

		if (username.equals("admin") && password.equals("admin")) {
			
			List<Student> list = I.getAllStudent();
			m.addAttribute("data",list);
			return "adminScreen";
			
		} else {
			m.addAttribute("message", "Enter your valid login");
			return "login";

		}

	}

	@RequestMapping("enroll_student")
	public String saveStudent(@ModelAttribute Student st ,Model m) {
		I.saveStudentData(st);
		List<Student> list = I.getAllStudent();
		m.addAttribute("data",list);
		return "adminScreen";
	}
	
	@RequestMapping("delete")
	public String deleteStudent(@RequestParam("id") int studentId ,Model m) {
		
		I.deleteByStudentData(studentId);
		List<Student> list = I.getAllStudent();
		m.addAttribute("data",list);
		
		return "adminScreen";
		
	}
	
	
	@RequestMapping("search")
	public String getBatch(@RequestParam String batchNumber, Model m) {
		List<Student> result = I.searchByBatch(batchNumber);
		if (result.size()>0) {
			m.addAttribute("data",result);
		}else {
			List<Student> list = I.getAllStudent();
			m.addAttribute("data",list);
			m.addAttribute("message","No record are available for this batch" + batchNumber + " .....!" );
		}
		
		
		return "adminScreen";
		
	}
	
	
	
	
}
