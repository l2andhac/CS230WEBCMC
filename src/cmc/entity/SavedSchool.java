package cmc.entity;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
/**
 * SavedSchool.java
 * 
 * This class is an entity class for saved schools.
 * 
 * 
 * @author L^2 and the Hackstreetboyz
 * @version 3/17/2019
 */
public class SavedSchool extends University {
  //timeStamp that keeps track of when a SavedSchool is added
  private DateFormat timeStamp;
  
  /**
   * Constructor that creates a Saved School 
   * @param u - University that the SavedSchool object represents
   * @param timeStamp - keeps track of when a SavedSchool is added
   */
  public SavedSchool(University u, String ts) {
    super(u.getSchoolName(), u.getState(), u.getLocation(), u.getControl(),
                                        u.getNumStudents(), u.getPercentFemales(), u.getSATVerbal(), u.getSATMath(),
                                        u.getExpenses(), u.getPercentFinancialAid(), u.getNumApplicants(),
                                        u.getPercentAdmitted(), u.getPercentEnrolled(), u.getAcademicScale(),
                                        u.getSocialScale(), u.getQualityOfLifeScale(), u.getEmphases());
    if(timeStamp == null) {
    this.timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    }
  }
  
  /**
   * Gets the time stamp of a saved university.
   * 
   * @return the time stamp of the university
   */
  public String getTimeStamp() {
	  String strDate = timeStamp.format(new Date());
    return strDate;
  }
  
  /**
   * Sets the time stamp of a saved university to time.
   * 
   * @param time the time the university was saved at
   */
  public void setTimeStamp(SimpleDateFormat time) {
    this.timeStamp = time;
  }
  
}