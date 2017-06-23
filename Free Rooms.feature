Feature: Free Rooms

Background: 
	Given 'QKiosk Displays' tab of Admin panel is opened
	And QKiosk Profile 'Kiosk 2' is created
	And Setting for 'Enable Free Rooms' is Yes

@Free_Rooms_Screen
Scenario: Free Rooms page preview
	When Click Profile name 'Kiosk 2' in the Name column
	And 'Kiosk' page opens in new tab
	And There is 'free rooms' button on the Kiosk page
	And Click 'free rooms' button
	Then Free Rooms page opens

@Info_Dialog
Scenario: Free Rooms Info feature
	# For this step the page opens from Kiosk screen
	Given Free Rooms page is opened
	# If no screens are shown, remove all the filters http://take.ms/WG5aA
	And Resource Screen tile is displayed
	When Click 'Info' button
	Then 'Resource Screen' information pop-up appears

@Quick_Book
Scenario: Free Rooms Book feature
	# For this step the page opens from Kiosk screen
	Given Free Rooms page is opened
	# If no screens are shown, remove all the filters http://take.ms/WG5aA
	And Resource Screen tile is displayed
	When Click 'Book' button
	# Enter Access Code - 8687 if it is requested http://take.ms/pm4ux
	And Booking modal opens
	And Select Duration '15 mins'
	# Wait for the end of creation process until notification about successful creation appears
	# The booking will start from the current user time and last for '15 mins'
	Then Created booking appears on the right-side panel