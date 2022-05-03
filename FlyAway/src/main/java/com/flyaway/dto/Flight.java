package com.flyaway.dto;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity (name = "flight")
@Table(name = "flight")
public class Flight {

	@Id
	@Column(name = "flightId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int flightId;
	
	@Column(name = "flightno")
	private String flightno;
	
	@Column(name = "flightname")
	private String flightname;
	
	@Column(name = "source")
	private String source;
	
	@Column(name = "destination")
	private String destination;

	@Column(name = "date")
	private String date;
	
	@Column(name = "time")
	private String time;
	
	@Column(name = "duration")
	private String duration;
	
	@Column(name = "airlines")
	private String airlines;

	
	@Column(name = "price")
	private String price;
	
	@Column(name = "seat")
	private String seat;
	
	
	public Flight() {
		
	}

	
	
	public Flight(String source, String destination, String date) {
		
		this.source = source;
		this.destination = destination;
		this.date = date;
	}



	public Flight(String flightno, String flightname, String source, String destination, String date, String time,
			String duration, String airlines,String price, String seat ) {
		
		this.flightno = flightno;
		this.flightname = flightname;
		this.source = source;
		this.destination = destination;
		this.date = date;
		this.time = time;
		this.duration = duration;
		this.airlines = airlines;
		this.price = price;
		this.seat = seat;
		
	}
	


	public Flight(int flightId, String flightno, String flightname, String source, String destination, String date,
			String time, String duration, String airlines, String price, String seat) {
		
		this.flightId = flightId;
		this.flightno = flightno;
		this.flightname = flightname;
		this.source = source;
		this.destination = destination;
		this.date = date;
		this.time = time;
		this.duration = duration;
		this.airlines = airlines;
		this.price = price;
		this.seat = seat;
	}


	public int getFlightId() {
		return flightId;
	}

	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}

	public String getFlightno() {
		return flightno;
	}

	public void setFlightno(String flightno) {
		this.flightno = flightno;
	}

	public String getFlightname() {
		return flightname;
	}

	public void setFlightname(String flightname) {
		this.flightname = flightname;
	}

	public String getFrom() {
		return source;
	}

	public void setFrom(String source) {
		this.source = source;
	}

	public String getTo() {
		return destination;
	}

	public void setTo(String destination) {
		this.destination = destination;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getAirlines() {
		return airlines;
	}

	public void setAirlines(String airport) {
		this.airlines = airport;
	}

	@Override
	public String toString() {
		return "Flight [flightId=" + flightId + ", flightno=" + flightno + ", flightname=" + flightname + ", source="
				+ source + ", destination=" + destination + ", date=" + date + ", time=" + time + ", duration=" + duration + ", price="
				+ price + ", seat=" + seat + ", airlines=" + airlines + "]";
	}
}
