package cmc.controller;
import dblibrary.project.csci230.*;
import java.util.*;
import cmc.entity.*;

/**
 * DataBaseController.java
 * 
 * This class is the controller for the database.
 * 
 * @author L^2 and the Hackstreetboyz
 * @version 3/17/2019
 */
public class DBController {
	// instance variable for the database library
  private UniversityDBLibrary univDBlib;
  // instance variable for a searchController
  private SearchController searchController;
  
  
  /**
   * Creates a DataBaseController object
   */
  public DBController() {
    univDBlib = new UniversityDBLibrary("l2andhac","csci230");
  }
  
  /**
   * Edits a university.
   * 
   * @param u - University to edit
   */
  public void editSchool(University u) {
    
    univDBlib.university_editUniversity(u.getSchoolName(), u.getState(), u.getLocation(), u.getControl(),
                                        u.getNumStudents(), u.getPercentFemales(), u.getSATVerbal(), u.getSATMath(),
                                        u.getExpenses(), u.getPercentFinancialAid(), u.getNumApplicants(),
                                        u.getPercentAdmitted(), u.getPercentEnrolled(), u.getAcademicScale(),
                                        u.getSocialScale(), u.getQualityOfLifeScale());
    List<String> dbEmphases = this.getSchool(u.getSchoolName()).getEmphases();
    List<String> entityEmphases = u.getEmphases();
    if(entityEmphases == null || entityEmphases.size() == 0) {
    	for(String em: dbEmphases) {
    		univDBlib.university_removeUniversityEmphasis(u.getSchoolName(), em);
    	}
    }
    
    else {
    for(String em: entityEmphases){
    	if(!dbEmphases.contains(em)) {
    		univDBlib.university_addUniversityEmphasis(u.getSchoolName(), em);
    	}
    }
    
    for(String em: dbEmphases){
    	if(!entityEmphases.contains(em)) {
    		univDBlib.university_removeUniversityEmphasis(u.getSchoolName(), em);
    	}
    }
    }
  }
  
	/**
	 * Adds a university to the database.
	 * 
	 * @param u
	 *            - University to add
	 * @return boolean - true if the university has been successfully added
	 */
	public boolean addSchool(University u) {
		if (this.findSchoolName(u.getSchoolName()) == false) {
			univDBlib.university_addUniversity(u.getSchoolName(), u.getState(), u.getLocation(), u.getControl(),
					u.getNumStudents(), u.getPercentFemales(), u.getSATVerbal(), u.getSATMath(), u.getExpenses(),
					u.getPercentFinancialAid(), u.getNumApplicants(), u.getPercentAdmitted(), u.getPercentEnrolled(),
					u.getAcademicScale(), u.getSocialScale(), u.getQualityOfLifeScale());

			List<String> list = u.getEmphases();
			if (list != null) {
				for (int i = 0; i < list.size(); i++) {
					univDBlib.university_addUniversityEmphasis(u.getSchoolName(), list.get(i));
				}
			}
			return true;
		} else {
			return false;
		}
	}
  
  /**
   * Removes a university from the database.
   * 
   * @param u - University to remove
   */
  public void removeSchool(University u) {
    //check if school is saved by a user, or has an emphasis
    if (isSchoolSaved(u) == false && hasEmphasis(u) == false)
    {
    univDBlib.university_deleteUniversity(u.getSchoolName());
    }
  }
  
  /**
   * Checks if a university is saved.
   * 
   * @param u - University to check
   * @return boolean - true if the university has been already saved
   */
  public boolean isSchoolSaved(University u) {
    String[][] savedSchools = univDBlib.user_getUsernamesWithSavedSchools();
    // traverse the 2d array
    for (int i = 0; i < savedSchools.length; i++)
    {
        // check if the school is in the saved list of the user
        if(u.getSchoolName().equals(savedSchools[i][1]))
        {
          return true;
        }
      
    }
    return false;
  }
  
  /**
   * Finds an account from a username.
   * 
   * @param u - String which is the username of the account to find
   * @return Account - account corresponding to the username 
   */
  public Account findAccount(String u) {
    // the account to be returned
    Account retAccount = null;
    // array of users
    String[][] users = univDBlib.user_getUsers();
    // traverse the 2d array
    for (int i = 0; i < users.length; i++)
    {
        // check if the username exists
        if (users[i][2].equals(u))
        {
          // check if admin or user
          if(users[i][4].equals("u"))
          {
            retAccount = new User(users[i][0], users[i][1], users[i][2], users[i][3], users[i][5].charAt(0));
          }
          else
          {
            retAccount = new Admin(users[i][0], users[i][1], users[i][2], users[i][3], users[i][5].charAt(0));
          }
      }
    }
    return retAccount;
  }
  
  
  /**
   * Gets a list of all the universities in the database.
   * 
   * @return List<University> - the list of all the universities in the database
   */
  public Set<University> getAllSchools() {
    String[][] schools = univDBlib.university_getUniversities();
    // I think a HashSet would be better.
    Set<University> retList = new HashSet<University>();
    for (int i = 0; i < schools.length; i++)
    {
      List<String> emphasesList = new ArrayList<String>();
      // get the 2d array of school names and emphases
      String[][] emphases = univDBlib.university_getNamesWithEmphases();
      // traverse the array
      for (int j = 0; j < emphases.length; j++)
      {
        // check if school name in emphases array is equal to school name in schools array
        if (emphases[j][0].equals(schools[i][0]))
        {
          emphasesList.add(emphases[j][1]);
        }
      }
      University u = new University(schools[i][0], schools[i][1], schools[i][2], schools[i][3], 
                                    Integer.parseInt(schools[i][4]),Double.parseDouble(schools[i][5]), 
                                    Double.parseDouble(schools[i][6]), Double.parseDouble(schools[i][7]), 
                                    Double.parseDouble(schools[i][8]), Double.parseDouble(schools[i][9]),
                                    Integer.parseInt(schools[i][10]), Double.parseDouble(schools[i][11]), 
                                    Double.parseDouble(schools[i][12]), Integer.parseInt(schools[i][13]),
                                    Integer.parseInt(schools[i][14]), Integer.parseInt(schools[i][15]), emphasesList);
      retList.add(u);
    }
    return retList;
  }
  
  /**
   * Removes a saved school from the saved school list of a user.
   * 
   * @param u - User who is attempting to remove a SavedSchool
   * @param s - String that is the name of the SavedSchool to be removed
   */
  public void removeSavedSchool(User u, String s) {
    univDBlib.user_removeSchool(u.getUsername(), s);
  }
  
  /**
   * Gets the list of saved school for a user.
   * 
   * @param u - User to get the list of saved school from
   * @return List<SavedSchool> - a list of the saved schools of a user
   */
  public List<SavedSchool> getSavedSchools(User u) {
    //
    List<SavedSchool> retList = new ArrayList<SavedSchool>();
    String[][] savedSchools = univDBlib.user_getUsernamesWithSavedSchools();
    for (int i = 0; i < savedSchools.length; i++)
    {
        if(u.getUsername().equals(savedSchools[i][0]))
        {
          String[][] allSchools = univDBlib.university_getUniversities();
          for(int x = 0; x < allSchools.length; x++)
          {
              if(savedSchools[i][1].equals(allSchools[x][0]))
              {
                List<String> emphasesList = new ArrayList<String>();
                // get the 2d array of school names and emphases
                String[][] emphases = univDBlib.university_getNamesWithEmphases();
                // traverse the array
                for (int z = 0; z < emphases.length; z++)
                {
                  // check if school name in emphases array is equal to school name in schools array
                  if (emphases[z][0].equals(allSchools[x][0]))
                  {
                    emphasesList.add(emphases[z][1]);
                  }
                }
                University univ = new University(allSchools[x][0], allSchools[x][1], allSchools[x][2], allSchools[x][3], 
                                              Integer.parseInt(allSchools[x][4]),Double.parseDouble(allSchools[x][5]), 
                                              Double.parseDouble(allSchools[x][6]), Double.parseDouble(allSchools[x][7]), 
                                              Double.parseDouble(allSchools[x][8]), Double.parseDouble(allSchools[x][9]),
                                              Integer.parseInt(allSchools[x][10]), Double.parseDouble(allSchools[x][11]), 
                                              Double.parseDouble(allSchools[x][12]), Integer.parseInt(allSchools[x][13]),
                                              Integer.parseInt(allSchools[x][14]), Integer.parseInt(allSchools[x][15]),
                                              emphasesList);
                SavedSchool savedSchool = new SavedSchool(univ, savedSchools[i][2]);
                retList.add(savedSchool);
              }
            }
          
          
      }
    }
    return retList;
  }
  
  /**
   * Finds the name of a school in the database.
   * 
   * @param schoolName - String which is the name of the school to be found
   * @return boolean - true if the school name has been found
   */
  public boolean findSchoolName(String schoolName) {
    //
    String[][] allSchools = univDBlib.university_getUniversities();
    for(int x = 0; x < allSchools.length; x++)
    {
      for(int y = 0; y < allSchools[x].length; y++)
      {
        if(schoolName.equals(allSchools[x][0]))
        {
          return true;
        }
      }
    }
    return false;
  }
  
  /**
   * Finds in the database and returns a list of universities matching the research
   * criteria.
   * 
   * @param s - Search object containing all the wanted criteria
   * @return Set<University> - the set of all the matching universities
   */
  public Set<University> findSearchedSchool(Search s) {
	this.searchController = new SearchController(s);
    Set<University> allSchools = getAllSchools();
    Set<University> matches = new HashSet<University>();
    for(University school : allSchools) {
    	if(this.searchController.testForMatch(school)) {
    		matches.add(school);
    	}  	
    }
    return matches;
	}
  
  
  /**
   * Adds a saved school to the database.
   * 
   * @param u - User to add the SavedSchool
   * @param s - SavedSchool to add
   */
  public void addSavedSchool(User u, SavedSchool s) {
    univDBlib.user_saveSchool(u.getUsername(), s.getSchoolName());
  }
  
  /**
   * Gets and returns a school from the database using the school name.
   * 
   * @param schoolName - String which is the name of the school to get
   * @return University that has the schoolName of the parameter
   */
  public University getSchool(String schoolName) {
    //
    University retU = null;
    String[][] allSchools = univDBlib.university_getUniversities();
    for(int x = 0; x < allSchools.length; x++)
    {
      for(int y = 0; y < allSchools[x].length; y++)
      {
        if(schoolName.equals(allSchools[x][0]))
        {
          String[][] emphases = univDBlib.university_getNamesWithEmphases();
          ArrayList<String> emphasesList = new ArrayList<String>();
                // traverse the array
                for (int z = 0; z < emphases.length; z++)
                {
                  // check if school name in emphases array is equal to school name in schools array
                  if (emphases[z][0].equals(allSchools[x][0]))
                  {
                    emphasesList.add(emphases[z][1]);
                  }
                }
                retU = new University(allSchools[x][0], allSchools[x][1], allSchools[x][2], allSchools[x][3], 
                                              Integer.parseInt(allSchools[x][4]),Double.parseDouble(allSchools[x][5]), 
                                              Double.parseDouble(allSchools[x][6]), Double.parseDouble(allSchools[x][7]), 
                                              Double.parseDouble(allSchools[x][8]), Double.parseDouble(allSchools[x][9]),
                                              Integer.parseInt(allSchools[x][10]), Double.parseDouble(allSchools[x][11]), 
                                              Double.parseDouble(allSchools[x][12]), Integer.parseInt(allSchools[x][13]),
                                              Integer.parseInt(allSchools[x][14]), Integer.parseInt(allSchools[x][15]),
                                              emphasesList);
                return retU;
        }
      }
    }
    return retU;
  }
  
  /**
   * Returns a list of all the accounts present in the database.
   * 
   * @return Set<String> - a set of all the usernames
   */
  public Set<String> viewAllAccounts() {
    String[][] allUsers = univDBlib.user_getUsers();
    Set<String> retList = new HashSet<String>();
    for(int i = 0; i < allUsers.length; i++)
    {
      retList.add(allUsers[i][2]);
    }
    return retList;
  }
  
  /**
   * Changes an account to a new account with updated information.
   * 
   * @param a - Account that is updated
   */
  public void changeAccount(Account a) {
    univDBlib.user_editUser(a.getUsername(), a.getFirstName(), a.getLastName(), a.getPassword(), a.getUserType(),
                            a.getStatus());
  }
  
  /**
   * Checks if a university has emphasis.
   * 
   * @param u - University to be checked
   * @return boolean -true is the university has emphasis
   */
  public boolean hasEmphasis(University u) {
    //
    String[][] schoolsWithEmphasis = univDBlib.university_getNamesWithEmphases();
    for(int i = 0; i < schoolsWithEmphasis.length; i++)
    {
      if(schoolsWithEmphasis[i][0].equals(u.getSchoolName()))
      {
        return true;
      }
    }
    return false;
  }
  
  /**
   * Finds a username in the database.
   * 
   * @param u - Username to be found
   * @return boolean - true if the username is in the database
   */
  public boolean findUsername(String u) {
    //
    String[][] users = univDBlib.user_getUsers();
    for(int i = 0; i < users.length; i++)
    {
      if(users[i][2].equals(u))
      {
        return true;
      }
    }
    return false;
  }
  /**
   * adds account to the database
   * @param a - Account to be added
   */
  public void addAccount(Account a){
    univDBlib.user_addUser(a.getFirstName(), a.getLastName(), a.getUsername(), a.getPassword(), a.getUserType());
    char status = a.getStatus();
    if(status == 'D' || status == 'P' || status == 'N') {
    	this.changeAccount(a);
    }
  }
  
  /**
   * A user can request a new account.
   * 
   * @param u - User who requests the new account
   */
  public void requestNewAccount(User u) {
	  univDBlib.user_addUser(u.getFirstName(), u.getLastName(), u.getUsername(), u.getPassword(), u.getUserType());
  }

  
    /**
     * Gets the total number of schools in the database
     * 
     * @return int - the total number of schools currently in the database
     */
  public int getTotalNumberOfSchools() {
	  
	  String[][] schools = univDBlib.university_getUniversities();
	  return schools.length; 
  }
  
  /**
   * Gets the total number of schools in the database
   * 
   * @return int - the total number of schools currently in the database
   */
  public int getTotalNumberOfAccounts() {
	  
	  String[][] accounts = univDBlib.user_getUsers();
	  return accounts.length; 
}
  
  
  /**
   * looks for the 5 most closely related schools
   * 
   * @param school - String that is the schoolname of the University to find recommended schools for
   */
public Map<Double, String> findRecSchools(String school) {
	
	University univ = this.getSchool(school);
	
	Set<University> allUniversities = this.getAllSchools();
	
	double distance = 0;
	Map<Double, String> distanceMap = new TreeMap<Double, String>();
	for(University s : allUniversities)
    {
		distance = this.findDistance(univ, s);
		distanceMap.put(distance, s.getSchoolName());
    }
	return distanceMap;
}


/**
 * finds the distance between two universities
 * 
 * @param univ1 - first University to compare
 * @param univ2 - second University to compare
 * @return double - the distance between the two Universities
 */
public double findDistance(University univ1, University univ2) {
	
	double sameState = 1.0; 
	double sameLocation = 1.0; 
	double sameControl = 1.0;

	if(univ1.getState().equals(univ2.getState())){
		sameState = 0.0;
	}

	if(univ1.getLocation().equals(univ2.getLocation())){
		sameLocation = 0.0;
	}

	if(univ1.getControl().equals(univ2.getControl())){
		sameControl = 0.0;
	}

	//double distance = (sameState + sameLocation + sameControl + (Math.abs(univ1.getNumStudents()-univ2.getNumStudents())/(40000-10000)) + (Math.abs(univ1.getPercentFemales()-univ2.getPercentFemales())/(100-1)) + (Math.abs(univ1.getSATVerbal() -univ2.getSATVerbal())/(750-250)) + (Math.abs(univ1.getSATMath()-univ2.getSATMath())/(780-250)) + (Math.abs(univ1.getExpenses()-univ2.getExpenses())/(62915-10438)) + (Math.abs(univ1.getPercentFinancialAid()-univ2.getPercentFinancialAid())/(100-5)) + (Math.abs(univ1.getNumApplicants()-univ2.getNumApplicants())/(17000-4000)) + (Math.abs(univ1.getPercentAdmitted()-univ2.getPercentAdmitted())/(100-5)) + (Math.abs(univ1.getPercentEnrolled()-univ2.getPercentEnrolled())/(100-10)) + (Math.abs(univ1.getAcademicScale()-univ2.getAcademicScale())/(5-1)) + (Math.abs(univ1.getSocialScale()-univ2.getSocialScale())/(5-1)) + (Math.abs(univ1.getQualityOfLifeScale()-univ2.getQualityOfLifeScale())/(5-1)));
	double distance = (sameState + sameLocation + sameControl + (Math.abs(univ1.getNumStudents()-univ2.getNumStudents())/(30000.0)) + (Math.abs(univ1.getPercentFemales()-univ2.getPercentFemales())/(99.0)) + (Math.abs(univ1.getSATVerbal() -univ2.getSATVerbal())/(500.0)) + (Math.abs(univ1.getSATMath()-univ2.getSATMath())/(530.0)) + (Math.abs(univ1.getExpenses()-univ2.getExpenses())/(52477.0)) + (Math.abs(univ1.getPercentFinancialAid()-univ2.getPercentFinancialAid())/(100-5)) + (Math.abs(univ1.getNumApplicants()-univ2.getNumApplicants())/(13000.0)) + (Math.abs(univ1.getPercentAdmitted()-univ2.getPercentAdmitted())/(95.0)) + (Math.abs(univ1.getPercentEnrolled()-univ2.getPercentEnrolled())/(90.0)) + (Math.abs(univ1.getAcademicScale()-univ2.getAcademicScale())/(4.0)) + (Math.abs(univ1.getSocialScale()-univ2.getSocialScale())/(4.0)) + (Math.abs(univ1.getQualityOfLifeScale()-univ2.getQualityOfLifeScale())/(4.0)));
	
	return distance;
}

	public List<String> getEmphases(University u) {
		String schoolName = u.getSchoolName();

		String[][] emphases = univDBlib.university_getNamesWithEmphases();
		ArrayList<String> emphasesList = new ArrayList<String>();
		// traverse the array
		for (int z = 0; z < emphases.length; z++) {
			// check if school name in emphases array is equal to school name in schools
			// array
			if (emphases[z][0].equals(schoolName)) {
				emphasesList.add(emphases[z][1]);
			}
		}
		return emphasesList;
	}
	
	public void removeAccount(String username) {
		univDBlib.user_deleteUser(username);
	}
  
}
