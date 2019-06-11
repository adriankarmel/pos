package ca.karmel.pos.backend.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="product")
public class Product {	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int Id;
	
	@Column(name="description")
	@Size(min =1 , max=45, message = "Name must between 1 to 45 Characters.")
	private String description;	
	
	/*
	 * @OneToMany(mappedBy="product", cascade={CascadeType.PERSIST,
	 * CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	 * 
	 * private List<Category> category;
	 */
	@Column(name="category_id")
	private int categoryId;	
		
	/*
	 * public List<Category> getCategory() { return category; }
	 * 
	 * public void setCategory(List<Category> category) { this.category = category;
	 * }
	 */

	@Column(name="price")
	private double price;
	
	@Column(name="stock")
	private int stock;	
	
	@Column(name="sku")
	private int sku;	
	
	@Column(name="barcode")
	private String barCode;		
	
	@Column(name="comments")
	private String comments;	
	
	public Product() {		
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}	

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}		

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}
	
	public int getSku() {
		return sku;
	}

	public void setSku(int sku) {
		this.sku = sku;
	}

	public String getBarCode() {
		return barCode;
	}

	public void setBarCode(String barCode) {
		this.barCode = barCode;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}	
}