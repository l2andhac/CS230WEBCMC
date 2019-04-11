package cmc.controller;
import cmc.entity.*;
import java.util.*;
import java.util.AbstractMap.SimpleEntry;
import java.util.Map.Entry;

/** 
 * UserFunctionalityCOntroller.java
 * 
 * Controller for the UserFunctionalityController class
 * 
 * @author L^2 and the Hackstreetboyz
 * @version 3/17/2019
 */

public class UserFunctionalityController extends AccountFunctionalityController{

  //Instance varibla for the DBController
  private DBController dbController;
  
  /**
   * Constructor for UserFunctionalityController.
   */
  public UserFunctionalityController(){
    super();  
    this.dbController = new DBController();
  }
  
  
  
  /**
   * User can view their own account info.
   * 
   * @param u - the User to be view information for
   */
  public String viewUserInfo(User u){
    return super.viewAccountInfo(u.getUsername());
  }

  
  /**
   * User can view the details of a school if it is found in the database.
   * 
   * @param schoolName - String that is the name of the school
   * @return univ - University that is the university to view the details of if it is in the database 
   *         returns null if the university is not found
   */
  public University viewSchoolDetails(String schoolName){
	  boolean found = dbController.findSchoolName(schoolName);
	  if(found == true) {
		  University univ = dbController.getSchool(schoolName);
		  return univ;
		  
      }
	  return null;
  }
  
  
  /**
   * Allows the User to search a "friend" (another User) to see their list of SavedSchools.
   * 
   * @param username - String representing the username of the "friend" that the current User is trying to search for
   * @return List<SavedSchool> - the list of schools saved by the "friend"
   */
  public List<SavedSchool> searchForFriends(String username){
	  User friend = (User) dbController.findAccount(username);
	  if(friend == null) {
		  //System.out.println("Friend was not found");
		  return null;
	  }
	  return viewSavedSchools(friend);
  }
  
  /**
   * User can request for their status to be set to 'D' for deactivated.
   * 
   * @param user - User requesting deactivation
   */
  public void requestDeactivation(User user){
	  user.setStatus('D');
	  dbController.changeAccount(user);
  }
  
  /**
   * User can search for schools that match the parameter criteria.
   * 
   * @param searchObject - Search Object with all the parameters for a University
   * @return Set<University> - a set of universities matching the search object if the object is not null
   *         returns null if the searchObject is null
   */
  public Set<University> searchSchool(Search searchObject){
	  if(searchObject != null) {
		  return this.dbController.findSearchedSchool(searchObject);
      }
	  else {
		  //System.out.println("All the fields are empty");
		  return null;
      }
    
  }
  
  /**
   * User can sort the results of the search.
   * 
   * @param univs - Set<University> a set of universities to sort
   * @param howToSort - char a charater to determine the type of sorting
   * 
   * @return newList - the sorted list of universities
   */
  public List<University> sortResults(Set<University> univs, char howToSort){
	  List<University> newList = new ArrayList<University>();
	  for(University uni : univs) {
		  newList.add(uni);
      }
	  
	  if(howToSort =='e') { //sort by expenses
		  Collections.sort(newList, University.compareByExpenses);
      }
	  else if(howToSort == 'a') { //sort by percent admitted
		  Collections.sort(newList, University.compareByAdmission);
      }
	  else if(howToSort == 'n') { //sort by number of students
		  Collections.sort(newList, University.compareByNumberStudents);
      }
	  return newList; 
  }

  
  /**
   * User can save a school to make a University a SavedSchool.
   * 
   * @param univ - the University to save
   * @param user - the User to save the school to
   * 
   * @throws IllegalArgumentException
   */
  public void saveSchool(University univ, User user){
	  List<SavedSchool> list = dbController.getSavedSchools(user);
	  
	  SavedSchool schoolToSave = new SavedSchool(univ, "time");
	  
	  if(list.size() == 0) {
		  dbController.addSavedSchool(user,  schoolToSave);
	  }
	  
	  boolean found = false;
		for (SavedSchool saved: list) {
			if(univ.equals(saved)) {
				found = true;
			}
		}
	  if(!found) {
		  dbController.addSavedSchool(user, schoolToSave);
		  //user.addSavedSchool(schoolToSave);
      }
	  else {
		  throw new IllegalArgumentException("This school has already been saved");
      }
  }
  
  
  /**
   * Removes a SavedSchool from User's list of Saved Schools.
   * 
   * @param schoolToRemove - String that schoolName of the SavedSchool to remove
   * @param user - User to remove the SavedSchool from
   */
  public void removeSavedSchool(String schoolToRemove, User user){
    dbController.removeSavedSchool(user, schoolToRemove);
  }
  
  /**
   * View list of SavedSchools.
   * 
   * @param user - User that will have SavedSchools viewed
   * @return List<SavedSchool> - SavedSchools of the User
   */
  public List<SavedSchool> viewSavedSchools(User user){
	  List<SavedSchool> savedSchools = dbController.getSavedSchools(user);
	  return savedSchools;
  }
  
  /**
   * Compare two SavedSchools in the User's list of SavedSchools asking the user for 
   * the second school to compare.
   * 
   * @param s1 - String that is the name of the first school to compare
   * 
   * @throws IllegalArgumentException
   */
  public List<University> compareSavedSchools(String s1){
	  if(s1 == null) {
		  throw new IllegalArgumentException();
	  }
	  University s2 = this.requestForSecondSchool();
	  List<University> retList = new ArrayList<University>();
	  retList.add(dbController.getSchool(s1));
	  retList.add(s2);
	  return retList;
  }
  
  /**
   * Requests for the second school to compare to.

   * @return SavedSchool to compare
   */
  private University requestForSecondSchool(){
	  /*    Scanner sc = new Scanner(System.in);
	    System.out.println("Enter the name of a school to compare to the first one: ");
	    String schoolName = sc.next();*/
	  University school2= this.dbController.getSchool("AUBURN");
	  
	//sc.close();
	  return school2;
    
    
  }
  
  /**
   * Calls the method of DBCOntroller to find 5 most related schools.
   * 
   * @param school - String that is the schoolName of the University to find related schools
   */
  public Map<Double, String> showRecSchools(String school) {
	  TreeMap<Double, String> distanceMap = (TreeMap<Double, String>) dbController.findRecSchools(school);
	  Map<Double, String> top5Map = new TreeMap<Double, String>();
	  distanceMap.pollFirstEntry();
	  for(int i = 0; i < 5; i++) {
		  Entry<Double, String> entry = distanceMap.pollFirstEntry();
		  top5Map.put(entry.getKey(), entry.getValue());
	  }
	  return top5Map;
  }


}

