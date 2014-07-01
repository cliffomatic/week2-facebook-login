week2-facebook-login
====================

This is the week 2 homework.
It definitely took me ove 10 hours this week... lost count around 12.  Spent a lot of time helping other people.  I had a lot of trouble with next a Navigation Controller (top bar) inside a tabControllerBar
I want to know how to position the buttons on the navigation once and not have to put them on each page.  Same with title color and attributes.
[Here is the image walkthrough]
http://i.imgur.com/sI3734I.gif

-----------------
Facebook login page
Tapping in the UITextField repositions the elements, as shown in the screenshots.
Tapping anywhere dismisses the keyboard
If email and password field are both blank, button should be disabled. (I hide it until user engages
Password field should be secure with no autocorrection.
After tapping log in button, show the loading indicator in the button. After a 2 second delay, check the password.
If the password is '123', transition to the next screen.
If the password is anything else, display the password error alert.

Facebook feed
Navigation bar should have the search button and messages button. (I did this but I had to paste the code on every page... would like to instead have it in the mainView)
Immediately after launch, display the loading indicator.
After 2 seconds, show the feed, which is a long image in a scrollable view.
Tapping the status button should show the compose view w/ the keyboard (optional)
Tapping a profile picture should push a profile page (optional)
More

Add a scrollable view of the "More" page. (optional)
---------
I did not get to these.... mainly because I was helping other people :D
Upon tapping Log Out, return to the login screen. (optional)
Add a UIRefreshControl for a pull to refresh (optional)
After a pull to refresh, delay for 2 seconds before ending (optional)
Every other time, display an error message (optional)
