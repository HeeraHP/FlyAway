package com.flyaway.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity (name = "booking")
@Table(name = "booking")
public class Booking {
		
	@Id
	@Column(name = "bookingid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bookingid;
	
	@Column(name = "flightno")
	private String flightno;
	
	@Column(name = "source")
	private String source;
	
	@Column(name = "destination")
	private String destination;
	
	@Column(name = "airlines")
	private String airlines;
	
	@Column(name = "TotalAmount")
	private double TotalAmount;
	

	@Column(name = "fname")
	private String fname;
	
	@Column(name = "lname")
	private String lname;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "age")
	private int age;
	
	
	@Column(name="address")
	private String address;
	
	@Column(name = "ph")
	private String ph;

	@Column(name = "verificationid")
	private String verificationid;
	
	@Column(name = "verificationidno")
	private String verificationidno;
	
	@Column(name="returndate")
	private String returndate;
	
	@Column(name = "adults")
	private int adults;
	
	
	@Column(name = "child")
	private int child;

	@Column(name = "typeclass")
	private String typeclass;
	
	@Column(name = "trip")
	private String trip;

	public Booking() {
		
	}

	public Booking(String flightno, String source, String destination, String airlines,
			double totalAmount, String fname, String lname, String email, int age, String address, String ph,
			String verificationid, String verificationidno, String returndate, int adults, int child, String typeclass,
			String trip) {
		
		
		this.flightno = flightno;
		this.source = source;
		this.destination = destination;
		this.airlines = airlines;
		TotalAmount = totalAmount;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.age = age;
		this.address = address;
		this.ph = ph;
		this.verificationid = verificationid;
		this.verificationidno = verificationidno;
		this.returndate = returndate;
		this.adults = adults;
		this.child = child;
		this.typeclass = typeclass;
		this.trip = trip;
	}

	public int getBookingid() {
		return bookingid;
	}

	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}

	public String getFlightno() {
		return flightno;
	}

	public void setFlightno(String flightno) {
		this.flightno = flightno;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getAirlines() {
		return airlines;
	}

	public void setAirlines(String airlines) {
		this.airlines = airlines;
	}

	public double getTotalAmount() {
		return TotalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		TotalAmount = totalAmount;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPh() {
		return ph;
	}

	public void setPh(String ph) {
		this.ph = ph;
	}

	public String getVerificationid() {
		return verificationid;
	}

	public void setVerificationid(String verificationid) {
		this.verificationid = verificationid;
	}

	public String getVerificationidno() {
		return verificationidno;
	}

	public void setVerificationidno(String verificationidno) {
		this.verificationidno = verificationidno;
	}

	public String getReturndate() {
		return returndate;
	}

	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}

	public int getAdults() {
		return adults;
	}

	public void setAdults(int adults) {
		this.adults = adults;
	}

	public int getChild() {
		return child;
	}

	public void setChild(int child) {
		this.child = child;
	}

	public String getTypeclass() {
		return typeclass;
	}

	public void setTypeclass(String typeclass) {
		this.typeclass = typeclass;
	}

	public String getTrip() {
		return trip;
	}

	public void setTrip(String trip) {
		this.trip = trip;
	}

	@Override
	public String toString() {
		return "Booking [bookingid=" + bookingid + ", flightno=" + flightno + ", source=" + source + ", destination="
				+ destination + ", airlines=" + airlines + ", TotalAmount=" + TotalAmount + ", fname=" + fname
				+ ", lname=" + lname + ", email=" + email + ", age=" + age + ", address=" + address + ", ph=" + ph
				+ ", verificationid=" + verificationid + ", verificationidno=" + verificationidno + ", returndate="
				+ returndate + ", adults=" + adults + ", child=" + child + ", typeclass=" + typeclass + ", trip=" + trip
				+ "]";
	}

	

	
}

	