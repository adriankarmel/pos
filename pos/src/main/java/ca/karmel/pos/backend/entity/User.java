package ca.karmel.pos.backend.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="user")
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int Id;
	
	@Column(name="nickname")
	@Size(min =1 , max=45, message = "Nickname must between 1 to 45 Characters.")
	private String nickname;
	
	@Column(name="email")
	@Size(min =1 , max=80, message = "Email must between 1 to 80 Characters.")
	private String email;

	@Column(name="password")
	@Size(min =1 , max=8, message = "Password must between 1 to 8 Characters.")
	private String password;
	
	@Column(name="comments")
	@Size(min =1 , max=500, message = "Comments must between 1 to 500 Characters.")
	private String comments;
	
	@Column(name="inactive")
	private String inactive;	
	
	@Column(name="create_dt")	
	private Date createDt;
	
	@Column(name="update_dt")
	private Date updateDt;
	
	public User() {		
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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
}