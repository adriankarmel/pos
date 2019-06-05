package ca.karmel.pos.backend.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="customer")
public class Customer {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int Id;		
	
	@Column(name="first_name")
	@Size(min = 3, message = "First Name must between 1 to 10 Characters.")
	private String firstName;
	
	@Column(name="last_name")
	@Size(max=45,min=1)
	private String lastName;
	
	@Column(name="address")
	@Size(max=45,min=1)
	private String address;
	
	@Column(name="postal_code")
	@Size(max=6,min=1)
	private String postalCode;
	
	@Column(name="email")
	@Size(max=80)
	private String email;	
	
	@Column(name="contact_type_one")
	@Size(max=20)
	private String contactTypeOne;	
	
	@Column(name="contact_one")
	@Size(max=25)
	private String contactOne;
	
	@Column(name="contact_type_two")
	@Size(max=20)
	private String contactTypeTwo;
	
	@Column(name="contact_two")
	@Size(max=25)
	private String ContactTwo;
	
	@Column(name="contact_type_three")
	@Size(max=20)
	private String contactTypeThree;
	
	@Column(name="contact_three")
	@Size(max=20)
	private String ContactThree;
	
	public Customer() {		
	}	

	public int getId() {
		return Id;
	}
	
	public void setId(int id) {
		Id = id;
	}	

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}	

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}	
	
	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	
	public String getContactTypeOne() {
		return contactTypeOne;
	}

	public void setContactTypeOne(String contactTypeOne) {
		this.contactTypeOne = contactTypeOne;
	}

	public String getContactOne() {
		return contactOne;
	}

	public void setContactOne(String contactOne) {
		this.contactOne = contactOne;
	}

	public String getContactTypeTwo() {
		return contactTypeTwo;
	}

	public void setContactTypeTwo(String contactTypeTwo) {
		this.contactTypeTwo = contactTypeTwo;
	}

	public String getContactTwo() {
		return ContactTwo;
	}

	public void setContactTwo(String contactTwo) {
		ContactTwo = contactTwo;
	}

	public String getContactTypeThree() {
		return contactTypeThree;
	}

	public void setContactTypeThree(String contactTypeThree) {
		this.contactTypeThree = contactTypeThree;
	}

	public String getContactThree() {
		return ContactThree;
	}

	public void setContactThree(String contactThree) {
		ContactThree = contactThree;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Customer [id=" + Id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + "]";
	}		
}