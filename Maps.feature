Feature: Maps

Background: 
	Given 'QKiosk Displays' tab of Admin panel is opened
	And QKiosk Profile 'Kiosk 2' is created
	And Map Profile for floor '2' is created
	And Map Profile for floor '3' is created
	And A value for 'Default Map' dropdown is selected in QKiosk Profile Settings

@Maps_Screen
Scenario: Maps Preview
	When Click Profile name 'Kiosk 2' in the Name column
	And 'Kiosk' page opens in new tab
	And There is 'maps' button on the Kiosk page
	And Click 'maps' button
	Then Maps page opens

@Map_Info_Tab
Scenario: Maps Info feature
	# For this step the page opens from Kiosk screen
	Given Maps page is opened
	When Click Room Screen sign
	And Right-side panel appears
	# By default
	And 'Bookings' tab opens
	And Click 'Info' tab
	Then 'Info' tab opens
	
@Quick_Book @Create_Booking_Page
Scenario: Quick book from the 2nd floor 
	# For this step the page opens from Kiosk screen
	Given Maps page is opened
	When Click Room Screen sign
	And Right-side panel appears
	And Click 'Book' button
	# Enter Access Code - 8687 if it is requested http://take.ms/pm4ux
	And 'Create booking' page opens
	And Select '15 mins' from 'Quick Book' section
	# Wait for the end of creation process until notification about successful creation appears
	# The booking will start from the current user time and last for '15 mins'
	Then Created booking appears on the right-side panel

@Create_Booking_Page @Book
Scenario: Future booking from the 3d floor
	# For this step the page opens from Kiosk screen
	Given Maps page is opened
	When Click '3rd' floor button
	And '3rd' floor map is shown
	And Click Room Screen sign
	And Right-side panel appears
	And Click 'Book' button
	# Enter Access Code - 8687 if it is requested http://take.ms/pm4ux
	And 'Create booking' page opens
	And Click 'Book' button of the 'Create booking' page
	# for changing Start time use time selector that appears on 'Start' field click
	And Change Start time
	# Wait for the end of creation process until notification about successful creation appears
	# The booking will start from the time that was selected and lasts for an hour (if end time was not changed)
	Then Created booking appears on the right-side panel