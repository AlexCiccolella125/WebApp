package edu.fau.rcruz2015.util;

//This class stores information about the student and quiz grades
public class Student {
  
  //Declare class attributes
  private String sFirstName = "";             //First name of student
  private String sLastName = "";              //Last name of student
  private int nQuiz1 = 0;                     //Grade for Quiz 1
  private int nQuiz2 = 0;                     //Grade for Quiz 2
  private int nQuiz3 = 0;                     //Grade for Quiz 3
  private static int nNumberStudents = 0;     //Number of students
  
  //Declare constants
  public static final int QUIZZES = 3;        //Number of quiz grades
  
  //Default constructor for Student
  public Student() {
      //Update number of students created
      nNumberStudents++;
  } //end default constructor
  
  //Overloaded constructor for Student
  public Student(String sFName, String sLName, int nQ1, int nQ2, int nQ3) {
      //Assign parameter values to class attributes
      sFirstName = sFName;
      sLastName = sLName;
      nQuiz1 = nQ1;
      nQuiz2 = nQ2;
      nQuiz3 = nQ3;
      
      //Update number of students created
      nNumberStudents++;
  } //end overloaded constructor

  //Accessor for First Name
  public String getFirstName() {
      return sFirstName;
  } //end accessor for First Name

  //Mutator for First Name
  public void setFirstName(String sFstName) {
      sFirstName = sFstName;
  } //end mutator for First Name

  //Accessor for Last Name
  public String getLastName() {
      return sLastName;
  } //end accessor for Last Name

  //Mutator for Last Name
  public void setLastName(String sLstName) {
      sLastName = sLstName;
  } //end mutator for Last Name

  //Accessor for Quiz 1 grade
  public int getQuiz1() {
      return nQuiz1;
  } //end accessor for Quiz 1

  //Mutator for Quiz 1 grade
  public void setQuiz1(int nQz1) {
      nQuiz1 = nQz1;
  } //end mutator for Quiz 1

  //Accessor for Quiz 2 grade
  public int getQuiz2() {
      return nQuiz2;
  } //end accessor for Quiz 2

  //Mutator for Quiz 2 grade
  public void setQuiz2(int nQz2) {
      nQuiz2 = nQz2;
  } //end mutator for Quiz 2

  //Accessor for Quiz 3 grade
  public int getQuiz3() {
      return nQuiz3;
  } //end accessor for Quiz 3

  //Mutator for Quiz 3 grade
  public void setQuiz3(int nQz3) {
      nQuiz3 = nQz3;
  } //end mutator for Quiz 3  
  
  //Accessor for number of students
  public static int getNumberStudents() {
      return nNumberStudents;
  } //end accessor for number of students
  
  //Calculates the average of the three quiz grades for the student
  public double calculateQuizAverage() {
      double dAverage = 0.0;          //Local variable to store quiz average
      
      //Calculate quiz average
      dAverage = (nQuiz1 + nQuiz2 + nQuiz3)/QUIZZES;
      
      return dAverage;
      
  } //end method calculateQuizAverage

public String getId() {
	// TODO Auto-generated method stub
	return null;
}

} //end class Student
