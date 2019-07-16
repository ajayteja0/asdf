package aPackage;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@SuppressWarnings("unused")
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
		Date date=new Date();
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String creationTime=dateFormat.format(date);
		phoneObject.setCreationDate(creationTime);
		phoneDaoObject.savePhone(phoneObject);
		return "redirect:/viewActivatedPhones";
	}
	
	@RequestMapping("/viewActivatedPhones")
	public String viewActivatedPhones(Model m) {
		List<Phone> listOfPhones= phoneDaoObject.getActivatedPhones();
		m.addAttribute("list",listOfPhones);
		
		m.addAttribute("active",1);
		return "viewPhones";
	}
	
	@RequestMapping("/viewAllPhones")
	public String viewAllPhones(Model m) {
		List<Phone> listOfPhones= phoneDaoObject.getAllPhones();
		m.addAttribute("list",listOfPhones);
		m.addAttribute("active",0);
		return "viewPhones";
	}
	
	@RequestMapping(value="/editPhone/{id}")
	public String editPhone(@PathVariable int id,Model m) {
		Phone phoneObject=phoneDaoObject.getPhoneById(id);
		m.addAttribute("command",phoneObject);
		return "phoneEditForm";
	}
	
	@RequestMapping(value="/editPhoneSave",method=RequestMethod.GET)
	public String editPhoneSave(@ModelAttribute("phoneObject") Phone phoneObject){
		Date date=new Date();
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String modifiedTime=dateFormat.format(date);
		phoneObject.setModifiedDate(modifiedTime);
		phoneDaoObject.updatePhone(phoneObject);
		return "redirect:/viewActivatedPhones";
	}
	
	@RequestMapping(value="/deletePhone/{id}/{active}",method=RequestMethod.GET)
	public String deletePhone(@PathVariable("id") int id,@PathVariable("active") int active) {
		phoneDaoObject.deactivate(id);
		if(active==1)
			return "redirect:/viewActivatedPhones";
		else
			return "redirect:/viewAllPhones";
	}
	
	@RequestMapping(value="/reactivatePhone/{id}",method=RequestMethod.GET)
	public String reactivatePhone(@PathVariable int id) {
		phoneDaoObject.activate(id);
		return "redirect:/viewAllPhones";
	}
	@RequestMapping(value="/viewChange/{isAll}",method=RequestMethod.GET)
	
	public String viewChangeMethod(@PathVariable boolean isAll) {
		if(isAll == true) {
			return "redirect:/viewAllPhones";
		}
		else
			return "redirect:/viewActivatedPhones";
	}
	
}
