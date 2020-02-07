package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String link;
	@ManyToOne
	@JoinColumn(name = "id_type")
	private Product_type product_type;
	private Float price;
	private String description;
	private Float discount;
	@OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
	private Collection<Bill_detail> bill_detail;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(Integer id, String name, String link, Product_type product_type, Float price, String description,
			Float discount, Collection<Bill_detail> bill_detail) {
		super();
		this.id = id;
		this.name = name;
		this.link = link;
		this.product_type = product_type;
		this.price = price;
		this.description = description;
		this.discount = discount;
		this.bill_detail = bill_detail;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public Product_type getProduct_type() {
		return product_type;
	}
	public void setProduct_type(Product_type product_type) {
		this.product_type = product_type;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Float getDiscount() {
		return discount;
	}
	public void setDiscount(Float discount) {
		this.discount = discount;
	}
	public Collection<Bill_detail> getBill_detail() {
		return bill_detail;
	}
	public void setBill_detail(Collection<Bill_detail> bill_detail) {
		this.bill_detail = bill_detail;
	}
	

	

}
