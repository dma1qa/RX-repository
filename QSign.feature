Feature: QSign

@QSign_Screen
Scenario: QSign Preview
	Given 'QKiosk Displays' tab of Admin panel is opened
	And QKiosk Profile 'Kiosk 2' is created
	And A value for 'Default QSign' dropdown is selected in QKiosk Profile Settings
	# Click Profile name 'Kiosk 2' in the Name column
	When Open OKiosk page
	And There is 'qsign' button on the Kiosk page
	And Click 'qsign' button
	Then Qsign page opens
