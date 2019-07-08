package ca.karmel.pos.backend.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="category")
public class Category {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int Id;		
	
	@Column(name="name")
	@Size(min =1, max=45, message = "First Name must between 1 to 45 Characters.")
	private String name;	
	
	@OneToMany(mappedBy="category",
			   cascade={CascadeType.PERSIST, 
						CascadeType.MERGE,
						CascadeType.DETACH,
						CascadeType.REFRESH})	
	private List<Product> products;
	
	@Column(name="inactive")
	private String inactive;	
	
	@Column(name="create_dt")	
	private Date createDt;
	
	@Column(name="update_dt")
	private Date updateDt;
		
	@Column(name = "comments")
	@Size(min =1, max=45, message = "Comments Name must between 1 to 500 Characters.")
	private String comments;
	
	public Category() {		
	}

	public int getId() {
		return Id;
	}
	
	public void setId(int id) {
		Id = id;
	}
			
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}		
	
	public String getInactive() {
		return inactive;
	}

	public void setInactive(String inactive) {
		this.inactive = inactive;
	}

	public Date getCreateDt() {
		return createDt;
	}

	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
	}

	public Date getUpdateDt() {
		return updateDt;
	}

	public void setUpdateDt(Date updateDt) {
		this.updateDt = updateDt;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}
	
}