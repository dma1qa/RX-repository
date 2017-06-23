Feature: Create Resource Display Profile

@Resource_Display_Profile
Scenario: Create Resource Display Profile with Default Settings
	# Resource Displays > Create Resource Display Profile
	Given Create Resource Display Profile page is opened
	And Default 'Connection Properties' are:
	| Setting                  | Value                                           |
	| Resource server hostname | https://outlook.office365.com/EWS/Exchange.asmx |
	| Resource server port     | 80                                              |
	| Resource name            |                                                 |
	| Resource name - Display  |                                                 |
	| Resource authentication  | Use System Settings                             |
	| Resource email           |                                                 |
	| Resource login user id   | RXAdmin@rx-cloud.com                            |
	| Resource login password  | password is hidden                              |
	| Resource login domain    | Room Screen                                     |
	| Local mode               | No                                              |
	And Default 'Touch Screen Settings' are:
	| Setting                                   | Value               | Comment |
	| Interactive ++                            | Yes                 |         |
	| Maximum duration of individual booking ++ | 0                   |         |
	| Display SmartBookTM Button                | Use System Settings | Yes     |
	| SmartBookTM Authenticated ?               | is disabled         |         |
	| Display 'More' Button                     | is disabled         |         |
	| Auto Cancellation                         | Use System Settings | On      |
	| Display Check In Button                   | Use System Settings | Yes     |
	| Check In Starts                           | is disabled         |         |
	| Check In Ends                             | is disabled         |         |
	| 'Check In' Authenticated ?                | is disabled         |         |
	| No Show Policy Enabled                    | Use System Settings | No      |
	| Display Extend Button                     | Use System Settings | Yes     |
	| Extend button appears                     | is disabled         |         |
	| 'Extend' Authenticated ?                  | is disabled         |         |
	| Display Check Out Button                  | Use System Settings | Yes     |
	| 'Check-Out' Authenticated ?               | is disabled         |         |
	| Show Floorplan Button                     | No                  |         |
	| Floorplan URL                             | is disabled         |         |
	| Record Attendance by RFID *               | Use System Settings | Yes     |
	And Default 'Display Settings (Basic)' are:
	| Setting                 | Value                    | Comment |
	| Screen Background Image |                          |         |
	| Graphical Timebar       | 9                        |         |
	| Timebar Start Hour      | 0                        |         |
	| Stylesheet              | RX Neo Theme V9 Standard |         |
	| Show Booked by          | Yes                      |         |
	| Show Session Status ++  | Use System Settings      | Yes     |
	And Default 'Display Settings (Advanced)' are:
	| Setting          | Value       |
	| Advanced Display | None        |
	| Content Type     | is disabled |
	| Content URL      |             |
	And Default 'Resource Information' are:
	| Setting                    | Value |
	| Occupancy                  |       |
	| Resource Information Image |       |
	| Resources in the room      |       |
	| Show Info Icon             | Yes   |
	| Search Tags                |       |
	| Resource Description       |       |
	And Default 'Serial Port Integration' are:
	| Setting                                                          | Value |
	| COM Port                                                         |       |
	| COM Port Settings                                                |       |
	| Check-In Action enabled?                                         | No    |
	| Check-In Action enabled at session start time?                   | No    |
	| Check-In Command                                                 |       |
	| Check-Out Alert Action enabled? (5 mins before Session end time) | No    |
	| Check-Out Alert Command                                          |       |
	| Check-Out Action enabled?                                        | No    |
	| Check-Out Action enabled at session end time?                    | No    |
	| Check-Out Command                                                |       |
	And Default 'Lacation Details' are:
	| Setting   | Value                |
	| Time Zone | Use Server Time Zone |
	| Country   |                      |
	| City      |                      |
	| Site      |                      |
	| Building  |                      |
	| Floor     |                      |
	| Zone      |                      |
	When Fill in empty fields of 'Connection Properties':
	| Setting                 | Value                   |
	| Resource name           | Test Resource           |
	| Resource name - Display | Test Display            |
	| Resource email          | A1QARoom06@rx-cloud.com |
	And Fill in empty fields of 'Location Details':
	| Setting  | Value    |
	| Country  | Country  |
	| City     | City     |
	| Site     | Site     |
	| Building | Building |
	| Floor    | 5        |
	| Zone     | Zone     |
	And Save changes
	Then Specified values for Country, City, Site, Building, Floor, Zone and Resource Display Name are shown in the corresponding columns
	And Default value 'Room' is displayed in the Resource Type column
	# Click the Display name in the column "Resource Display Name" to open Room Screen
	# Resource name - Display -- Test Display
	And 'Resource name - Display' field value is shown
	# Floorplan button http://take.ms/lNf6N
	And Floorplan button is not shown
	# Timebar http://take.ms/CDPq2
	And Time bar is not shown
	And 'Info' button is shown
	And 'Smartbook' button is shown
	# Time zone - Server Time Zone (GMT)
	And Time is shown according to selected time zone
	# Click Smartbook button
	# Enter Access Code - 8687 if it is requested http://take.ms/LBxxC
	# Select duration - 15mins
	And 'Checkout' button is shown
	# Booked by info http://take.ms/pXiQc
	And Booked by info is shown
	# Session status http://take.ms/KTfVw
	And Session status is shown
	# Extend button appears 15 Minutes before end of session (according to the System Settings)
	And 'Extend' button is shown
	# Click Checkout button
	# Wait for the session end
	# Click Smartbook button
	# More button > Select Start time (the closest that possible: e.g. current time is 9.48, select Start time - 9.50)
	# Created booking appears on the Room Screen display (but it is not started)
	And 'Check In' button is shown
	# Wait for Start time + 15 minutes (e.g. 10.05)
	And Session is autocancelled
