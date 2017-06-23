Feature: Info feature

@Map_Info_Tab
Scenario: Possible to open Info tab
	Given Map Profile for floor '2' is created
	And Maps page is opened
	When Click Room Screen sign
	And Right-side panel appears
	# By default
	And 'Bookings' tab opens
	And Click 'Info' tab
	Then 'Info' tab opens