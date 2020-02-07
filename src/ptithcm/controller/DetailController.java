package ptithcm.controller;


import java.util.ArrayList;
import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import ptithcm.entity.Product;



@Transactional
@Controller
public class DetailController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("detail/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {
		
		Session session = factory.getCurrentSession();		
		Product product = (Product) session.get(Product.class, id);
		model.addAttribute("item", product);	
		return "detail";
	}
	
	
}
