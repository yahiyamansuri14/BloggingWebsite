package io.marsab.minorproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.marsab.minorproject.model.Subscriber;
import io.marsab.minorproject.service.SubsService;
import io.marsab.minorproject.utility.EmailSenderImpl;

@RestController
@RequestMapping("/subs")
public class SubController {
	@Autowired
	private SubsService subService;
	@Autowired
	private EmailSenderImpl emailSenderImpl;
	@RequestMapping("/savesubs")
	public ModelAndView saveSubs(@RequestParam("firstname") String firstname,@RequestParam("lastname") String lastname,@RequestParam("email") String email,@RequestParam("message") String message) {
		ModelAndView modelAndView;
		Subscriber sub=new Subscriber();
		sub.setFirstname(firstname);
		sub.setLastname(lastname);
		sub.setEmail(email);
		sub.setMessage(message);
		int result=subService.saveSubscriber(sub);
		if(result==1) {
			return new ModelAndView("forward:/showindex");
		}else {
			modelAndView=new ModelAndView("error");
		}
		return modelAndView;
	}
	
	@RequestMapping("/newsletter")
	public ModelAndView newsLetterSave(@RequestParam("email") String email) {
		Subscriber sub=new Subscriber();
		sub.setEmail(email);
		subService.saveSubscriber(sub);
		emailSenderImpl.sendSubscribeMail(email);
		//ModelAndView modelAndView=new ModelAndView("index");
		//return modelAndView;
		return new ModelAndView("forward:/showindex");
	}
}
