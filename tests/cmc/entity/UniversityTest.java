package cmc.entity;

import static org.junit.Assert.*;

import java.util.List;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class UniversityTest {

	University u;
	
	@Before
	public void setUp() throws Exception {
		u = new University("BETHEL UNIVERSITY", "WISCONSIN", "URBAN", "STATE", 8000, 30.0, -1, -1, 5000, 10.5, 10500, 95.0, 70.0, 2, 1, 1, null);
	}

	@After
	public void tearDown() throws Exception {
		u = null;
	}


	@Test
	public void testSetSchoolName() {
		u.setSchoolName("BETHEL COLLEGE");
		assertTrue("Correctly sets school name", "BETHEL COLLEGE".equals(u.getSchoolName()));
	}

	@Test
	public void testSetState() {
		u.setState("MINNESOTA");
		assertTrue("Correctly sets state", "MINNESOTA".equals(u.getState()));
	}

	@Test
	public void testSetLocation() {
		u.setLocation("SUBURBAN");
		assertTrue("Correctly sets location", "SUBURBAN".equals(u.getLocation()));
	}

	@Test
	public void testSetControl() {
		u.setControl("PRIVATE");
		assertTrue("Correctly sets control", "PRIVATE".equals(u.getControl()));
	}

	@Test
	public void testSetNumStudents() {
		u.setNumberOfStudents(8001);
		assertTrue("Correctly sets number of students", 8001==(u.getNumStudents()));
	}

	@Test
	public void testSetPercentFemales() {
		u.setPercentFemale(40.0);
		assertTrue("Correctly sets percent female", 40.0==(u.getPercentFemales()));
	}

	@Test
	public void testSetSATVerbal() {
		u.setSatVerbal(400);
		assertTrue("Correctly sets SATVerbal", 400==(u.getSATVerbal()));
	}

	@Test
	public void testSetSATMath() {
		u.setSatMath(450);
		assertTrue("Correctly sets SATMath", 450==(u.getSATMath()));
	}

	@Test
	public void testSetExpenses() {
		u.setExpenses(2600);
		assertTrue("Correctly sets expenses", 2600==(u.getExpenses()));
	}

	@Test
	public void testSetPercentFinancialAid() {
		u.setPercentFinancialAid(20.0);
		assertTrue("Correctly sets percent financial aid", 20.0==(u.getPercentFinancialAid()));
	}

	@Test
	public void testSetNumberOfApplicants() {
		u.setNumberOfApplicants(23000);
		assertTrue("Correctly sets number of applicants", 23000==(u.getNumApplicants()));
	}

	@Test
	public void testSetPercentAdmitted() {
		u.setPercentAdmitted(30.0);
		assertTrue("Correctly sets percent admitted", 30.0==(u.getPercentAdmitted()));
	}

	@Test
	public void testSetPercentEnrolled() {
		u.setPercentEnrolled(30.0);
		assertTrue("Correctly sets percent enrolled", 30.0==(u.getPercentEnrolled()));
	}

	@Test
	public void testSetAcademicScale() {
		u.setAcademicsScale(4);
		assertTrue("Correctly sets academic scale", 4==(u.getAcademicScale()));
	}

	@Test
	public void testSetSocialScale() {
		u.setSocialScale(4);
		assertTrue("Correctly sets social scale", 4==(u.getSocialScale()));
	}

	@Test
	public void testSetQualityOfLifeScale() {
		u.setQualityScale(4);
		assertTrue("Correctly sets quality of life scale", 4==(u.getQualityOfLifeScale()));
	}

	@Test
	public void testSetEmphases() {
		List<String> foci = new ArrayList<String>();
		foci.add("ENGINEERING");
		u.setEmphases(foci);
		assertTrue("Correctly sets emphases", u.getEmphases().contains("ENGINEERING"));
		u.setEmphases(null);
	}

	@Test
	public void testToString() {
		assertTrue("Correctly converts University object to a String", u.toString().equals("University [schoolName=" + u.getSchoolName() + ", state=" + u.getState() + ", location=" + u.getLocation() + ", control="
				+ u.getControl() + ", numberOfStudents=" + u.getNumStudents() + ", percentFemale=" + u.getPercentFemales()
				+ ", satVerbal=" + u.getSATVerbal() + ", satMath=" + u.getSATMath() + ", expenses=" + u.getExpenses()
				+ ", percentFinancialAid=" + u.getPercentFinancialAid() + ", numberOfApplicants=" + u.getNumApplicants()
				+ ", percentAdmitted=" + u.getPercentAdmitted() + ", percentEnrolled=" + u.getPercentEnrolled() + ", academicsScale="
				+ u.getAcademicScale() + ", socialScale=" + u.getSocialScale()+ ", qualityScale=" + u.getQualityOfLifeScale() + ", emphases="
				+ u.getEmphases() + "]"));
	}
	
	@Test
	public void testEquals() {
		University u2 = new University("BETHEL UNIVERSITY", "WISCONSIN", "URBAN", "STATE", 8000, 30.0, -1, -1, 5000, 10.5, 10500, 95.0, 70.0, 2, 1, 1, null);
		assertTrue("The universities should be equal", u2.equals(u));
		u2.setState("sldkf");
		assertFalse("The universities should not be equal", u2.equals(u));
		u2.setState(u.getState());
		u2.setControl("lsdkfj");
		assertFalse("The universities should not be equal", u2.equals(u));
		u2.setControl(u.getControl());
		u2.setLocation("lsdkfjas");
		assertFalse("The universities should not be equal", u2.equals(u));
		u2.setLocation(u.getLocation());
		u2.setNumberOfStudents(932487);
		assertFalse("The universities should not be equal", u2.equals(u));
		u2.setNumberOfStudents(u.getNumStudents());
		u2.setPercentFemale(1298.0);
		assertFalse("The universities should not be equal", u2.equals(u));
		u2.setPercentFemale(u.getPercentFemales());
		u2.setSatMath(9182.4);
		assertFalse("The universities should not be equal", u2.equals(u));
		u2.setSatMath(u.getSATMath());
		u2.setAcademicsScale(23);
		assertFalse("The universities should not be equal", u2.equals(u));
		u2.setAcademicsScale(u.getAcademicScale());
		u2.setPercentAdmitted(687.5);
		assertFalse("The universities should not be equal", u2.equals(u));
		u2.setPercentAdmitted(u.getPercentAdmitted());
		u2.setPercentFinancialAid(232.8);
		assertFalse("The universities should not be equal", u2.equals(u));
		u2.setPercentFinancialAid(u.getPercentFinancialAid());
		u2.setQualityScale(43);
		assertFalse("The universities should not be equal", u2.equals(u));
	}

}
