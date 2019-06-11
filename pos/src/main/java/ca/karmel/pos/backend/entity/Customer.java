package ca.karmel.pos.backend.entity;

import java.util.LinkedHashMap;

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
	@Size(min =1 , max=45, message = "First Name must between 1 to 45 Characters.")
	private String firstName;
	
	@Column(name="last_name")
	@Size(min=1, max=45, message = "First Name must between 1 to 45 Characters.")
	private String lastName;
	
	@Column(name="address")
	private String address;
	
	@Column(name="postal_code")
	@Size(max=6, message = "Postal Code must between 1 to 6 Characters.")
	private String postalCode;
	
	@Column(name="contact_type_one")
	private String contactTypeOne;	
	
	@Column(name="contact_one")
	private String contactOne;
	
	@Column(name="contact_type_two")
	private String contactTypeTwo;
	
	@Column(name="contact_two")
	@Size(max=6, message = "Code must between 1 to 10 Characters.")
	private String ContactTwo;	
	
	@Column(name="email_one")
	private String emailOne;
	
	@Column(name="email_two")
	private String emailTwo;
	
	@Column(name="city")
	private String city;
	
	@Column(name="province")
	private String province;
	
	@Column(name="comments")
	private String comments;	
	
	@Column(name="inactive")
	private String inactive;	
	
	@Column(name="create_dt")
	private String createDt;
		
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
	
	public String getEmailOne() {
		return emailOne;
	}

	public void setEmailOne(String emailOne) {
		this.emailOne = emailOne;
	}

	public String getEmailTwo() {
		return emailTwo;
	}

	public void setEmailTwo(String emailTwo) {
		this.emailTwo = emailTwo;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getInactive() {
		return inactive;
	}

	public void setInactive(String inactive) {
		this.inactive = inactive;
	}

	public String getCreateDt() {
		return createDt;
	}

	public void setCreateDt(String createDt) {
		this.createDt = createDt;
	}	
	
}