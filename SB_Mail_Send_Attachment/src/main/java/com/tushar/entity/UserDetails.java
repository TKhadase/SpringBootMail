package com.tushar.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Date;
import java.util.Set;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name="SB03SX_USER_DETAILS")
public class UserDetails implements Serializable {

	@Id
	@GeneratedValue(strategy =GenerationType.AUTO)
	private Integer APPUSERID;
	
	private String fname;
	private String lname;
	private String address;
	private String mobile;
	private String  pmobile ="";
	private Date dob;
	private LocalDate doj;
	private String email;

	@Column(length = 300)
	private String passwrd;
	
	private String gender;
	
	@ElementCollection(fetch = FetchType.EAGER)
	@CollectionTable(name = "APP_UID_ROLES",
										joinColumns = @JoinColumn(name="APPUID",referencedColumnName = "APPUSERID"))
	private Set<String> roles;

	@Override
	public String toString() {
		return "UserDetails [APPUSERID=" + APPUSERID + ", fname=" + fname + ", lname=" + lname + ", address=" + address
				+ ", mobile=" + mobile + ", pmobile=" + pmobile + ", dob=" + dob + ", doj=" + doj + ", email=" + email
				+ ", passwrd=" + passwrd + ", gender=" + gender + ", roles=" + roles + "]";
	}
	
}
