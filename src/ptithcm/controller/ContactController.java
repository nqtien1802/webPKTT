package ptithcm.controller;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {
	@RequestMapping("contact")
	String contact() {
		return "contact";
	}
	
	
	@Autowired
	JavaMailSender mailer;
	@RequestMapping("contact/send")
	public String send(ModelMap model, @RequestParam("name") String name,
			@RequestParam("phone") String phone, @RequestParam("content") String content) {
		try {
			// Tạo mail
			MimeMessage mail = mailer.createMimeMessage();
			// Sử dụng lớp trợ giúp
			MimeMessageHelper helper = new MimeMessageHelper(mail);
			helper.setFrom(name, name);
			helper.setTo("nguyenquangtien1802@gmail.com");
			helper.setReplyTo(name, name);
			helper.setSubject(phone);
			helper.setText(content, true);
			// Gửi mail
			mailer.send(mail);
			model.addAttribute("message", "Gửi email thành công !");
		} catch (Exception ex) {
			model.addAttribute("message", "Gửi email thất bại !");
		}
		return "contact";
	}
}
