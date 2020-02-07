package ptithcm.entity;

import java.util.Collection;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "bill")
public class Bill {
	@Id
	@GeneratedValue
	private Integer id;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date date_order;
	private Float total;
	private String name;
	private String phone;
	@OneToMany(mappedBy = "bill", fetch = FetchType.EAGER)
	private Collection<Bill_detail> bull_detail;
	public Bill() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bill(Integer id, Date date_order, Float total, String name, String phone,
			Collection<Bill_detail> bull_detail) {
		super();
		this.id = id;
		this.date_order = date_order;
		this.total = total;
		this.name = name;
		this.phone = phone;
		this.bull_detail = bull_detail;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getDate_order() {
		return date_order;
	}
	public void setDate_order(Date date_order) {
		this.date_order = date_order;
	}
	public Float getTotal() {
		return total;
	}
	public void setTotal(Float total) {
		this.total = total;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Collection<Bill_detail> getBull_detail() {
		return bull_detail;
	}
	public void setBull_detail(Collection<Bill_detail> bull_detail) {
		this.bull_detail = bull_detail;
	}
	
}
