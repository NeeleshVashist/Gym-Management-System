package com.gym.data;

import java.util.List;

import com.gym.model.Gym;

public interface GymDAO {
	
	public List<Gym> getMembers() throws Exception;
	public void addMembers(Gym gym) throws Exception;
	public void deleteMembers(String phoneNumber)throws Exception;
	public void updateMembers(Gym gym)throws Exception;
	public Gym getMember(int serialNo) throws Exception;
	public List<Gym> searchMembers(String phoneNumber) throws Exception;
	public Gym getCustomer(String phoneNumber) throws Exception;
}
