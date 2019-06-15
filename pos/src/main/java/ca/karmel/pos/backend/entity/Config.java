package ca.karmel.pos.backend.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="config")
public class Config {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int Id;
	
	@Column(name="company_name")
	@Size(min =1 , max=45, message = "Company Name must between 1 to 50 Characters.")
	private String companyName;
	
	@Column(name="address")
	private String address;
	
	@Column(name="city")
	private String city;
	
	@Column(name="province")
	private String province;
	
	@Column(name="postal_code")
	@Size(max=6, message = "Postal Code must between 1 to 6 Characters.")
	private String postalCode;	
	
	@Column(name="phone_one")
	private String phoneOne;
	
	@Column(name="phone_two")
	private String phoneTwo;	
	
	@Column(name="email_one")
	private String emailOne;	
	
	@Column(name="email_two")
	private String emailTwo;	
	
	public Config() {		
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getPhoneOne() {
		return phoneOne;
	}

	public void setPhoneOne(String phoneOne) {
		this.phoneOne = phoneOne;
	}

	public String getPhoneTwo() {
		return phoneTwo;
	}

	public void setPhoneTwo(String phoneTwo) {
		this.phoneTwo = phoneTwo;
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
}