package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@RequestMapping("/showForm")
	public String showForm(Model theModel) {
		
		// create a new Student object
		Student theStudent = new Student();
		
		// add student object to the model
		theModel.addAttribute("student", theStudent);
		
		return "student-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student theStudent) {
		
		System.out.println("The first name is : "+theStudent.getFirstName());
		System.out.println("The last name is : "+theStudent.getLastName());
		System.out.println("The country is : "+theStudent.getCountry());
		System.out.println("Favorite Language is :"+theStudent.getFavoriteLanguage());
		System.out.println("He/She knows the following Operating Systems :"+theStudent.getOs());
		
		return "student-confirmation";
	}
}
