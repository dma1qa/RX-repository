Feature: Floor Plan

Background: 
	Given 'QKiosk Displays' tab of Admin panel is opened
	And QKiosk Profile 'Kiosk 2' is created
	And A value for 'Default Floorplan' dropdown is selected in QKiosk Profile Settings

@Floor_Plan_Screen
Scenario: Floor Plan Preview
	# Click Profile name 'Kiosk 2' in the Name column
	When Open OKiosk page
	And There is 'floor plan' button on the Kiosk page
	And Click 'floor plan' button
	Then Floorplan page opens

@Quick_Book
Scenario: Floorplan Book feature
	# For this step the page opens from Kiosk screen
	Given Floor Plan page is opened
	When Click Room Screen tile
	And Screen Room page opens
	And Click 'Smartbook' button
	# Enter Access Code - 8687 if it is requested http://take.ms/pm4ux
	And Pop-up to select time and duration appears
	And Click '30 mins' button
	Then Screen Room page opens
	# The booking starts from the current user time and last for '30 mins'
	And Session is in progress
	# Over time
	And Floorplan page opens