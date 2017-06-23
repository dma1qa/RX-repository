Feature: Free Desks

Scenario: Free Desks Preview
	Given 'QKiosk Displays' tab of Admin panel is opened
	And QKiosk Profile 'Kiosk 2' is created
	And Setting for 'Enable Free Desks' is Yes
	# Click Profile name 'Kiosk 2' in the Name column
	When Open OKiosk page
	And There is 'free desks' button on the Kiosk page
	And Click 'free desks' button
	Then Free Desks page opens
