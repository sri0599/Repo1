package com.igs.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author USER
 *
 */

public class IgsSupporterListDto {

	Integer user_id;
	String scode;
	String category;
	String sex;
	String old_user_id;
	String password;
	String full_name;
	String title;
	String fname;
	String lname;
	String desg;
	String dept;
	String origin;
	String add1;
	String add2;
	String add3;
	String city;
	String state;
	String pin;
	String country;
	String retltr;
	String exectve;
	String mem2011;
	String jou2011;
	String jlife_time;
	String issmge1013;
	Integer enrlyear;
	String through;
	String email;
	String remarks;
	String mobile;
	String fax;
	String active_status;
	String nationality;
	String blog;
	MultipartFile attachment1;
	MultipartFile attachment2;
	MultipartFile attachment3;
	MultipartFile supp1_proof;
	MultipartFile supp2_proof;
	MultipartFile dob_proof;
	MultipartFile others_proof;
	String created_by;
	Date created_on;
	String modified_by;
	Date modified_on;
	String upload_folder;
	String about_me;
	String chat_flag;
	String chat_visibility_flag;
	String mname;
	String dob;
	String contact_add1;
	String contact_add2;
	String contact_add3;
	String contact_no;
	String others;
	String through2;
	Integer executive_year;
	String approved_by;
	Integer mem2011_year;
	String blog_flag;
	String email_flag;
	String sms_flag;
	Integer jou2011_year;
	String jlife_time_subscription;
	String issmge1013_flag;
	String issmge_block_year;
	String user_name;
	String specialization;
	Integer ref_no;
	String colflg;
	String emal_group_id;
	String online_voting_right_flag;
	String close_voting_flag;
	Date close_date;
	String mail_send_flag;
	String password_mail_flag;
	String temp_generated_password;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getScode() {
		return scode;
	}
	public void setScode(String scode) {
		this.scode = scode;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getOld_user_id() {
		return old_user_id;
	}
	public void setOld_user_id(String old_user_id) {
		this.old_user_id = old_user_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDesg() {
		return desg;
	}
	public void setDesg(String desg) {
		this.desg = desg;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getAdd1() {
		return add1;
	}
	public void setAdd1(String add1) {
		this.add1 = add1;
	}
	public String getAdd2() {
		return add2;
	}
	public void setAdd2(String add2) {
		this.add2 = add2;
	}
	public String getAdd3() {
		return add3;
	}
	public void setAdd3(String add3) {
		this.add3 = add3;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getRetltr() {
		return retltr;
	}
	public void setRetltr(String retltr) {
		this.retltr = retltr;
	}
	public String getExectve() {
		return exectve;
	}
	public void setExectve(String exectve) {
		this.exectve = exectve;
	}
	public String getMem2011() {
		return mem2011;
	}
	public void setMem2011(String mem2011) {
		this.mem2011 = mem2011;
	}
	public String getJou2011() {
		return jou2011;
	}
	public void setJou2011(String jou2011) {
		this.jou2011 = jou2011;
	}
	public String getJlife_time() {
		return jlife_time;
	}
	public void setJlife_time(String jlife_time) {
		this.jlife_time = jlife_time;
	}
	public String getIssmge1013() {
		return issmge1013;
	}
	public void setIssmge1013(String issmge1013) {
		this.issmge1013 = issmge1013;
	}
	public Integer getEnrlyear() {
		return enrlyear;
	}
	public void setEnrlyear(Integer enrlyear) {
		this.enrlyear = enrlyear;
	}
	public String getThrough() {
		return through;
	}
	public void setThrough(String through) {
		this.through = through;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getActive_status() {
		return active_status;
	}
	public void setActive_status(String active_status) {
		this.active_status = active_status;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getBlog() {
		return blog;
	}
	public void setBlog(String blog) {
		this.blog = blog;
	}
	public MultipartFile getAttachment1() {
		return attachment1;
	}
	public void setAttachment1(MultipartFile attachment1) {
		this.attachment1 = attachment1;
	}
	public MultipartFile getAttachment2() {
		return attachment2;
	}
	public void setAttachment2(MultipartFile attachment2) {
		this.attachment2 = attachment2;
	}
	public MultipartFile getAttachment3() {
		return attachment3;
	}
	public void setAttachment3(MultipartFile attachment3) {
		this.attachment3 = attachment3;
	}
	public MultipartFile getSupp1_proof() {
		return supp1_proof;
	}
	public void setSupp1_proof(MultipartFile supp1_proof) {
		this.supp1_proof = supp1_proof;
	}
	public MultipartFile getSupp2_proof() {
		return supp2_proof;
	}
	public void setSupp2_proof(MultipartFile supp2_proof) {
		this.supp2_proof = supp2_proof;
	}
	public MultipartFile getDob_proof() {
		return dob_proof;
	}
	public void setDob_proof(MultipartFile dob_proof) {
		this.dob_proof = dob_proof;
	}
	public MultipartFile getOthers_proof() {
		return others_proof;
	}
	public void setOthers_proof(MultipartFile others_proof) {
		this.others_proof = others_proof;
	}
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	public Date getCreated_on() {
		return created_on;
	}
	public void setCreated_on(Date created_on) {
		this.created_on = created_on;
	}
	public String getModified_by() {
		return modified_by;
	}
	public void setModified_by(String modified_by) {
		this.modified_by = modified_by;
	}
	public Date getModified_on() {
		return modified_on;
	}
	public void setModified_on(Date modified_on) {
		this.modified_on = modified_on;
	}
	public String getUpload_folder() {
		return upload_folder;
	}
	public void setUpload_folder(String upload_folder) {
		this.upload_folder = upload_folder;
	}
	public String getAbout_me() {
		return about_me;
	}
	public void setAbout_me(String about_me) {
		this.about_me = about_me;
	}
	public String getChat_flag() {
		return chat_flag;
	}
	public void setChat_flag(String chat_flag) {
		this.chat_flag = chat_flag;
	}
	public String getChat_visibility_flag() {
		return chat_visibility_flag;
	}
	public void setChat_visibility_flag(String chat_visibility_flag) {
		this.chat_visibility_flag = chat_visibility_flag;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getContact_add1() {
		return contact_add1;
	}
	public void setContact_add1(String contact_add1) {
		this.contact_add1 = contact_add1;
	}
	public String getContact_add2() {
		return contact_add2;
	}
	public void setContact_add2(String contact_add2) {
		this.contact_add2 = contact_add2;
	}
	public String getContact_add3() {
		return contact_add3;
	}
	public void setContact_add3(String contact_add3) {
		this.contact_add3 = contact_add3;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getOthers() {
		return others;
	}
	public void setOthers(String others) {
		this.others = others;
	}
	public String getThrough2() {
		return through2;
	}
	public void setThrough2(String through2) {
		this.through2 = through2;
	}
	public Integer getExecutive_year() {
		return executive_year;
	}
	public void setExecutive_year(Integer executive_year) {
		this.executive_year = executive_year;
	}
	public String getApproved_by() {
		return approved_by;
	}
	public void setApproved_by(String approved_by) {
		this.approved_by = approved_by;
	}
	public Integer getMem2011_year() {
		return mem2011_year;
	}
	public void setMem2011_year(Integer mem2011_year) {
		this.mem2011_year = mem2011_year;
	}
	public String getBlog_flag() {
		return blog_flag;
	}
	public void setBlog_flag(String blog_flag) {
		this.blog_flag = blog_flag;
	}
	public String getEmail_flag() {
		return email_flag;
	}
	public void setEmail_flag(String email_flag) {
		this.email_flag = email_flag;
	}
	public String getSms_flag() {
		return sms_flag;
	}
	public void setSms_flag(String sms_flag) {
		this.sms_flag = sms_flag;
	}
	public Integer getJou2011_year() {
		return jou2011_year;
	}
	public void setJou2011_year(Integer jou2011_year) {
		this.jou2011_year = jou2011_year;
	}
	public String getJlife_time_subscription() {
		return jlife_time_subscription;
	}
	public void setJlife_time_subscription(String jlife_time_subscription) {
		this.jlife_time_subscription = jlife_time_subscription;
	}
	public String getIssmge1013_flag() {
		return issmge1013_flag;
	}
	public void setIssmge1013_flag(String issmge1013_flag) {
		this.issmge1013_flag = issmge1013_flag;
	}
	public String getIssmge_block_year() {
		return issmge_block_year;
	}
	public void setIssmge_block_year(String issmge_block_year) {
		this.issmge_block_year = issmge_block_year;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public Integer getRef_no() {
		return ref_no;
	}
	public void setRef_no(Integer ref_no) {
		this.ref_no = ref_no;
	}
	public String getColflg() {
		return colflg;
	}
	public void setColflg(String colflg) {
		this.colflg = colflg;
	}
	public String getEmal_group_id() {
		return emal_group_id;
	}
	public void setEmal_group_id(String emal_group_id) {
		this.emal_group_id = emal_group_id;
	}
	public String getOnline_voting_right_flag() {
		return online_voting_right_flag;
	}
	public void setOnline_voting_right_flag(String online_voting_right_flag) {
		this.online_voting_right_flag = online_voting_right_flag;
	}
	public String getClose_voting_flag() {
		return close_voting_flag;
	}
	public void setClose_voting_flag(String close_voting_flag) {
		this.close_voting_flag = close_voting_flag;
	}
	public Date getClose_date() {
		return close_date;
	}
	public void setClose_date(Date close_date) {
		this.close_date = close_date;
	}
	public String getMail_send_flag() {
		return mail_send_flag;
	}
	public void setMail_send_flag(String mail_send_flag) {
		this.mail_send_flag = mail_send_flag;
	}
	public String getPassword_mail_flag() {
		return password_mail_flag;
	}
	public void setPassword_mail_flag(String password_mail_flag) {
		this.password_mail_flag = password_mail_flag;
	}
	public String getTemp_generated_password() {
		return temp_generated_password;
	}
	public void setTemp_generated_password(String temp_generated_password) {
		this.temp_generated_password = temp_generated_password;
	}
	


}
