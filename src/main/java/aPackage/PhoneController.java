package aPackage;
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.PathVariable;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;;   
@Controller
public class PhoneController {
	
	@Autowired
	PhoneDao phoneDaoObject;
	
	@RequestMapping("/phoneForm")
	public String phoneForm(Model m) {
		m.addAttribute("command",new Phone());
		return "phoneForm";
		
	}
	
	@RequestMapping(value="/savePhone",method=RequestMethod.POST)
	public  String savePhone(@ModelAttribute("phoneObject") Phone phoneObject) {
		phoneDaoObject.savePhone(phoneObject);
		return "redirect:/viewPhones";
	}
	
	@RequestMapping("/viewPhones")
	public String viewPhones(Model m) {
		List<Phone> listOfPhones= phoneDaoObject.getPhones();
		m.addAttribute("list",listOfPhones);
		return "viewPhones";
	}
	
	@RequestMapping(value="/editPhone/{id}")
	public String editPhone(@PathVariable int id,Model m) {
		Phone phoneObject=phoneDaoObject.getPhoneById(id);
		m.addAttribute("command",phoneObject);
		return "phoneEditForm";
	}
	
	@RequestMapping(value="/editPhoneSave",method=RequestMethod.POST)
	public String editPhoneSave(@ModelAttribute("phoneObject") Phone phoneObject){
		phoneDaoObject.updatePhone(phoneObject);
		return "redirect:/viewPhones";
	}
	
	@RequestMapping(value="/deletePhone/{id}",method=RequestMethod.GET)
	public String deletePhone(@PathVariable int id) {
		phoneDaoObject.deletePhone(id);
		return "redirect:/viewPhones";
	}
	
}
