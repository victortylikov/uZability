package com.victortylikov.spring.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.OneToOne;
import javax.persistence.JoinColumn;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "user")
public class User {

	@Id
	@Column(name = "id_user")
	@GeneratedValue
	private Integer idUser;

	@Size(min = 3, max = 30, message = "����� ������ ���� �� 3 �� 30 ��������")
	@Pattern(regexp = "^[a-zA-Z0-9]+$", message = "����� ������ ���������� � ���� ��� ����")
	@Column(name = "login")
	private String login;

	@Size(min = 3, max = 30, message = "������ ������ ���� �� 3 �� 30 ��������")
	@Column(name = "password")
	private String password;

	@Pattern(regexp = "[a-zA-Z0-9]+@[a-zA-Z0-9-]++(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})", message = "E-mail ������ �����������")
	@Column(name = "email")
	private String email;

	@ManyToMany
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "id_user"), inverseJoinColumns = @JoinColumn(name = "id_role"))
	private Set<Role> roles = new HashSet<Role>();

	@OneToOne(mappedBy = "user", cascade = CascadeType.ALL)
	private UserDetail userDetail;
	
	@OneToMany(mappedBy="user")
    private Set<Comment> comments;

	public UserDetail getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public Integer getIdUser() {
		return idUser;
	}

	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set<Comment> getComments() {
		return comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}

}
