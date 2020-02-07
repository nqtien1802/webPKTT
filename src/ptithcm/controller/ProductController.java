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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Product;


@Transactional
@Controller
public class ProductController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("product")
	public String product(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		
		model.addAttribute("list",list);
		
		return "products";
	}
	@RequestMapping("product/{type}")
	public String edit(ModelMap model, @PathVariable("type") Integer type) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product where product_type.id = "+type;		
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		
		model.addAttribute("list",list);
		return "products";	
	
	}
	
	
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String insert(ModelMap model, @ModelAttribute("s") String s) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";		
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		List<Product> listNew = new ArrayList<Product>();
		for (Product product : list) {
			if(product.getName().toLowerCase().contains(s.toLowerCase())) {
				listNew.add(product);
			}
		}
		
		model.addAttribute("list",listNew);
		return "products";
	}
}
