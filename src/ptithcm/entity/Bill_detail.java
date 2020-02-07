package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "bill_detail")
public class Bill_detail {
	@Id
	@GeneratedValue
	private Integer id;
	@ManyToOne
	@JoinColumn(name = "id_bill")
	private Bill bill;
	@ManyToOne
	@JoinColumn(name = "id_product")
	private Product product;
	private Float quantity;
	private Float price;
	public Bill_detail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bill_detail(Integer id, Bill bill, Product product, Float quantity, Float price) {
		super();
		this.id = id;
		this.bill = bill;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Bill getBill() {
		return bill;
	}
	public void setBill(Bill bill) {
		this.bill = bill;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Float getQuantity() {
		return quantity;
	}
	public void setQuantity(Float quantity) {
		this.quantity = quantity;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}

	
}
