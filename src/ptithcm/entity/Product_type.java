package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product_type")
public class Product_type {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String image;
	@OneToMany(mappedBy = "product_type", fetch = FetchType.EAGER)
	private Collection<Product> product;

	public Product_type() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product_type(Integer id, String name, String image, Collection<Product> product) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.product = product;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Collection<Product> getProduct() {
		return product;
	}

	public void setProduct(Collection<Product> product) {
		this.product = product;
	}

}
