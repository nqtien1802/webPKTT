package ptithcm.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.Bill;
import ptithcm.entity.Bill_detail;
import ptithcm.entity.Product;

@Transactional
@Controller
public class CartController {
	Product product = new Product();
	@Autowired
	SessionFactory factory;

	@RequestMapping("cart/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {

		Session session = factory.getCurrentSession();
		product = (Product) session.get(Product.class, id);
		
		return "cart";
	}

	@RequestMapping("buy")
	public String send(ModelMap model, @RequestParam("name") String name, @RequestParam("phone") String phone,
			@RequestParam("quantity") Float quantity) {
		
		
		Bill bill = new Bill();
		bill.setName(name);
		bill.setPhone(phone);
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		formatter.format(date);
		bill.setDate_order(date);
		
		Bill_detail detail = new Bill_detail();
		detail.setProduct(product);
		detail.setPrice(product.getPrice());		
		detail.setBill(bill);
		detail.setQuantity(quantity);
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(bill);
			session.save(detail);
			t.commit();
			model.addAttribute("message", "Mua thành công!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Mua thất bại !");
		} finally {
			session.close();
		}

		return "cart";
	}
}
