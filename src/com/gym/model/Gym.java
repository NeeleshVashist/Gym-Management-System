package com.gym.model;

import java.util.Date;

public class Gym {
	
	private int serialNo;
	private String firstName;
	private String lastName;
	private String phoneNumber;
	private int age;
	private String sex;
    private String address;
    private String city;
    private String state;
    private String pinCode;
    private double height;
	private double weight;
	private double bmi;
	private int packageId;
	private String packageName;
	private double rateOfPackage;
	private Date dateOfJoining;
	private Date dateOfExpiry;
	
	public Gym()
	{
		
	}
	
	public Gym(int serialNo, String firstName, String lastName, String phoneNumber, int age, String sex,
			String address, String city, String state, String pinCode, double height, double weight, double bmi,
			int packageId, String packageName, Double rateOfPackage, Date dateOfJoining, Date dateOfExpiry) {
		this.serialNo = serialNo;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNumber = phoneNumber;
		this.age = age;
		this.sex = sex;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pinCode = pinCode;
		this.height = height;
		this.weight = weight;
		this.bmi = bmi;
		this.packageId = packageId;
		this.packageName = packageName;
		this.rateOfPackage = rateOfPackage;
		this.dateOfJoining = dateOfJoining;
		this.dateOfExpiry = dateOfExpiry;
	}
	
	public Gym(String firstName, String lastName, String phoneNumber, int age, String sex, String address,
			String city, String state, String pinCode, double height, double weight, double bmi, int packageId,
			String packageName, Double rateOfPackage, Date dateOfJoining, Date dateOfExpiry) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNumber = phoneNumber;
		this.age = age;
		this.sex = sex;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pinCode = pinCode;
		this.height = height;
		this.weight = weight;
		this.bmi = bmi;
		this.packageId = packageId;
		this.packageName = packageName;
		this.rateOfPackage = rateOfPackage;
		this.dateOfJoining = dateOfJoining;
		this.dateOfExpiry = dateOfExpiry;
	}
	
	public int getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(int serialNo) {
		this.serialNo = serialNo;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPinCode() {
		return pinCode;
	}
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public double getBmi() {
		return bmi;
	}
	public void setBmi(double bmi) {
		this.bmi = bmi;
	}
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public Double getRateOfPackage() {
		return rateOfPackage;
	}
	public void setRateOfPackage(Double rateOfPackage) {
		this.rateOfPackage = rateOfPackage;
	}
	public Date getDateOfJoining() {
		return dateOfJoining;
	}
	public void setDateOfJoining(Date dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}
	public Date getDateOfExpiry() {
		return dateOfExpiry;
	}
	public void setDateOfExpiry(Date dateOfExpiry) {
		this.dateOfExpiry = dateOfExpiry;
	}
	
	@Override
	public String toString() {
		return "UserDetails [serialNo=" + serialNo + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", phoneNumber=" + phoneNumber + ", age=" + age + ", sex=" + sex + ", address=" + address + ", city="
				+ city + ", state=" + state + ", pinCode=" + pinCode + ", height=" + height + ", weight=" + weight
				+ ", bmi=" + bmi + ", packageId=" + packageId + ", packageName=" + packageName + ", rateOfPackage="
				+ rateOfPackage + ", dateOfJoining=" + dateOfJoining + ", dateOfExpiry=" + dateOfExpiry + "]";
	}
	
	
}