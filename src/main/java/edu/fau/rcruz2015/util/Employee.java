package edu.fau.rcruz2015.util;

//This class represents Employee and their attributes
public class Employee {
    private String sId; 
    private String sFirstName; 
    private String sLastName; 
    private String sEmail;
    private double dSalary; 
    private int nDeptId;
     
      public Employee() {
     }
    
    public Employee(String sInitId, String sInitFirstName, String sInitLastName,
            String sInitEmail, double dInitSal, int nInitDept) {
        sId = sInitId;
        sFirstName = sInitFirstName;
        sLastName = sInitLastName;
        sEmail = sInitEmail;
        dSalary = dInitSal;
        nDeptId = nInitDept;
    }

    public int getDeptId() {
        return nDeptId;
    }

    public void setDeptId(int nDeptId) {
        this.nDeptId = nDeptId;
    }
    
    // Accessor for Employee Id 
    public String getId() {
        return sId;
    }// end accessor for Employee Id
    
    // Accessor for first name of Employee 
    public String getFirstName() {
        return sFirstName;
    }// Accessor for first name of Employee 
    
    // Muttator to set the Fisrt name of the Employee
    public void setFirstName(String sNewFirstName) {
        sFirstName = sNewFirstName;
    }// end muttator to set the Fisrt name of the Employee
    
    // Accessor for last name of Employee 
    public String getLastName() {
        return sLastName;
    }// end Accessor for last name of Employee 

    // Muttator to set the last name of the Employee
    public void setLastName(String sNewLastName) {
        sLastName = sNewLastName;
    }// end muttator to set the last name of the Employee
    
    // Muttator to set the salary of the Employee
    public void setSalary(double dNewSalary) {
        dSalary = dNewSalary;
    }// end muttator to set the salary of the Employee

    // Accessor for salary of Employee 
    public double getSalary() {
        return dSalary;
    }// end accessor for last name of Employee 
    
    // Method to print the Employee Information
    public void printEmployee(){
        System.out.printf("%-15s%-20s%-30s%-30s%-30s%-20s\n", sId, sFirstName, sLastName, sEmail, dSalary, nDeptId);
        
    }// end method to print the Employee Information

    // Muttator to set the email of the Employee    
    public void setEmail(String sNewEmail) {
        sEmail = sNewEmail;
    }// end muttator to set the email of the Employee

    // Accessor for email of Employee     
    public String getEmail() {
        return sEmail;
    }// End accessor for email of Employee

    public void setId(String sId) {
        this.sId = sId;
    }
    
}// End class Employee
