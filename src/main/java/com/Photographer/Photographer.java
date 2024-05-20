package com.Photographer;

public class Photographer {
	
	private int ID;
	private String Name;
	private String Address;
	private String NIC;
	private String Dateofbirthday;
	private String Gender;
	private String Email;
	private String ContactNumber;
	private String UserNameP;
	private String PasswordP;
	
	
	public Photographer(int ID, String Name, String Address, String NIC, String Dateofbirthday,String Gender, String Email,
			String ContactNumber, String UserNameP, String PasswordP) {
		
		this.ID = ID;
		this.Name = Name;
		this.Address = Address;
		this.NIC = NIC;
		this.Dateofbirthday = Dateofbirthday;
		this.Gender = Gender;
		this.Email = Email;
		this.ContactNumber = ContactNumber;
		this.UserNameP = UserNameP;
		this.PasswordP = PasswordP;
		
		
	}


	public int getID() {
		return ID;
	}

	public String getName() {
		return Name;
	}

	public String getAddress() {
		return Address;
	}

	public String getNIC() {
		return NIC;
	}

	public String getDateofbirthday() {
		return Dateofbirthday;
	}

	public String getGender() {
		return Gender;
	}
	public String getEmail() {
		return Email;
	}

	public String getContactNumber() {
		return ContactNumber;
	}

	public String getUserNameP() {
		return UserNameP;
	}

	public String getPasswordP() {
		return PasswordP;
	}

}
