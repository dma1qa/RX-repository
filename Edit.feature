Feature: Edit

@Map_Profile @Map_Screen
Scenario: Edit Map profile
	Given 'Maps' tab of Admin panel is opened
	And Map Profile for floor '2' is created
	And Map Profile for floor '2' has the following settings:
	| Setting    | Value                |
	| Show Clock | Yes                  |
	| Time Zone  | Use Server Time Zone |
	# use Edit sign to open Profile http://take.ms/nWU8y
	When Open Map Profile
	And Edit Map profile settings:
	| Setting    | Value             |
	| Show Clock | No                |
	| Time Zone  | (UTC+03:00) Minsk |
	And Save changes
	# click Map ID '1' to open Map page
	And Open Map page
	# time http://take.ms/uwPqZ
	Then Time is not shown
	# To open Create booking page use Book button of the right-side panel that appears on Room Screen sign click
	# Enter Access Code - 8687 if it is requested http://take.ms/pm4ux
	When Open 'Create booking' page
	Then Time of the Start field is shown according to selected time zone '(UTC+03:00) Minsk'