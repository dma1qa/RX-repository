Feature: Book

Background: 
	Given Map Profile for floor '2' is created
	And Map Profile for floor '3' is created
	And Maps page is opened

@Quick_Book @Create_Booking_Page
Scenario: Quick book from the 2nd floor 
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