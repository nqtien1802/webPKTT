package ptithcm.controller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Product;

@Transactional
@Controller
public class HomeController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("index")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		List<Product> listBanChay = new ArrayList<Product>();
		List<Product> listNew = new ArrayList<Product>();	
		List<Product> listSale = new ArrayList<Product>();

		for (Product product : list) {

			if (product.getProduct_type().getId() == 5) {
				listBanChay.add(product);
			}
			if (product.getProduct_type().getId() == 6) {
				listNew.add(product);
			}
			if (product.getProduct_type().getId() == 7) {
				listSale.add(product);
			}
			
		}
		model.addAttribute("listBanChay", listBanChay);
		model.addAttribute("listNew", listNew);
		model.addAttribute("listSale", listSale);
	

		return "index";
	}

}
