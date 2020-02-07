package ptithcm.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.transaction.Transactional;
import javax.websocket.server.PathParam;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ptithcm.entity.Bill_detail;
import ptithcm.entity.Product;
import ptithcm.entity.Product_type;
import ptithcm.entity.User;

@Transactional
@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "admin/login";
	}

	User user = new User();

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model, @PathParam("uname") String uname, @PathParam("psw") String psw) {

		Session session = factory.getCurrentSession();
		String hql = "FROM User where email= '" + uname + "' and password= '" + psw + "'";
		Query query = session.createQuery(hql);
		List<User> list = query.list();

		if (list.size() == 0) {
			model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng ! Vui lòng kiểm tra lại");
			return "admin/login";
		}
		user = list.get(0);
		return "redirect:product.htm";
	}

	@RequestMapping("product")
	public String product(ModelMap model) {
	
		List<Product> items = getProducts();
		model.addAttribute("items", items);
		model.addAttribute("user", user);
		return "admin/product";

	}
	
	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert() {
		
		return "admin/insert";
		
	}
	@Autowired
	ServletContext context;
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(ModelMap model, @RequestParam("name") String name,@RequestParam("id_type") Integer id_type, @RequestParam("price") Float price, @RequestParam("description") String description,@RequestParam("discount") Float discount,@RequestParam("photo") MultipartFile photo) {
			Product product = new Product();
			try {
				Session session = factory.getCurrentSession();		
				Product_type product_type = (Product_type) session.get(Product_type.class, id_type);				
				String photoPath = context.getRealPath("/images/" + photo.getOriginalFilename());
				photo.transferTo(new File(photoPath));					
				
				product.setName(name);			
				product.setDescription(description);
				product.setPrice(price);
				product.setDiscount(discount);
				product.setLink(photo.getOriginalFilename());
				product.setProduct_type(product_type);
				
				
			} catch (Exception e) {
				
				model.addAttribute("message", "Lỗi lưu file !");
				return "admin/insert";
			}
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.save(product);
				t.commit();
				
				return "redirect:product.htm"; 
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message", "Thêm mới thất bại !");
			} finally {
				session.close();
			}
		
		return "admin/insert";
	}

	Product product = new Product();
	@RequestMapping("edit/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {

		Session session = factory.getCurrentSession();
		 product = (Product) session.get(Product.class, id);

		model.addAttribute("product", product);
		
		return "admin/edit";
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(ModelMap model, @RequestParam("name") String name,@RequestParam("id_type") Integer id_type, @RequestParam("price") Float price, @RequestParam("description") String description,@RequestParam("discount") Float discount) {
		try {
			Session session = factory.getCurrentSession();		
			Product_type product_type = (Product_type) session.get(Product_type.class, id_type);			
			product.setName(name);			
			product.setDescription(description);
			product.setPrice(price);
			product.setDiscount(discount);			
			product.setProduct_type(product_type);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(product);
			t.commit();
			return "redirect:product.htm"; 
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại !");
		} finally {
			session.close();
		}
		return "admin/edit";
	}

	@SuppressWarnings("unchecked")
	public List<Product> getProducts() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		return list;
	}

	@RequestMapping("delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Product product = (Product) session.get(Product.class, id);
			session.delete(product);
			t.commit();
			model.addAttribute("message", "Xóa thành công !");
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message", "Xóa thất bại !");
		}
		model.addAttribute("items", getProducts());

		return "admin/product";
	}
	
	@RequestMapping("cart")
	public String cart(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Bill_detail";
		Query query = session.createQuery(hql);
		List<Bill_detail> list = query.list();
		model.addAttribute("user", user);
		model.addAttribute("items",list);
		return "admin/cart";
	}


}
