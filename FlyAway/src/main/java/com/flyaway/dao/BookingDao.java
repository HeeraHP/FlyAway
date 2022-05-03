package com.flyaway.dao;

import java.util.ArrayList;

import com.flyaway.dto.Booking;

public interface BookingDao {

	public Integer addBooking(Booking booking);
	
	public ArrayList<Booking> findBooking(String email);
	
}
