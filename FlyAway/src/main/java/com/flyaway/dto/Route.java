package com.flyaway.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity (name = "route")
@Table(name = "route")
public class Route {

	@Id
	@Column(name = "routeid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int routeid;
	
	@Column(name = "source")
	private String source;
	
	@Column(name = "destination")
	private String destination;
	
	
	

	public Route() {
		
	}



	public Route(String source, String destination) {
		
		this.source = source;
		this.destination = destination;
	}



	public Route(int routeid, String source, String destination) {
		
		this.routeid = routeid;
		this.source = source;
		this.destination = destination;
	}



	public int getRouteid() {
		return routeid;
	}



	public void setRouteid(int routeid) {
		this.routeid = routeid;
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



	@Override
	public String toString() {
		return "Route [routeid=" + routeid + ", source=" + source + ", destination=" + destination + "]";
	}
	
	
	
	
	
}
