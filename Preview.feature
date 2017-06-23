Feature: Preview

Background: 
	Given 'Maps' tab of Admin panel is opened
	And Map Profile for floor '2' is created
	And Map Profile for floor '3' is created

@Map_Screen
Scenario: Maps Preview 2 floor
	When Click map ID '1'
	Then 'Maps' page opens in new tab
	And Default floor is '2'

@Map_Screen
Scenario: Maps Preview 2 floor
	When Click map ID '2'
	Then 'Maps' page opens in new tab
	And Default floor is '3'