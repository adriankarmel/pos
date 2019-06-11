package ca.karmel.pos.backend.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
	@Size(min =1 , max=45, message = "First Name must between 1 to 45 Characters.")
	private String name;	
	
	/*
	 * @OneToMany(mappedBy="categories", cascade={CascadeType.PERSIST,
	 * CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH},
	 * fetch=FetchType.LAZY)
	 * 
	 * @JoinColumn(name="product_id") private Product products;
	 */
	
	public Category() {		
	}

	public int getId() {
		return Id;
	}
	
	/*
	 * public Product getProducts() { return products; }
	 * 
	 * public void setProducts(Product products) { this.products = products; }
	 */

	public void setId(int id) {
		Id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}	
}