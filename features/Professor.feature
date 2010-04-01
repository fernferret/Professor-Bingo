Feature: Add Professor
	In order to add a professor
	As a user
	I want to add a new professor to the system
	
	Scenario: Add Professor Page Exists
		Given I am on Add Professor
		Then I should see "New Professor"
		
	Scenario: Add Professor
		Given I am on Add Professor
		And I have entered "Cary Laxer" into "name"
		When I press "Create"
		Then I should see "Professor was successfully created."
		Then I should see "Cary Laxer"
	
	Scenario: Delete Professor
		Given I am on Add Professor
		And I have entered "Cary Laxer" into "name"
		When I press "Create"
		Then I should see "Professor was successfully created."
		When I follow "Back"
		Then I am on Professors
		Then I should see "Cary Laxer"