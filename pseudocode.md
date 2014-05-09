#### TIMEME [working title] PSEUDOCODE

As a user, I want to be able to:

Release 0 (MPV):

 - Log in/out with my own individual username.
 - Create a new task.
 - Track the amount of time spent on a task.
 - Display accumulated time spent on a task.
 
Release 1 and Beyond:

 - Create and store multiple tasks.
 - Display all tasks currently running.
 - Display what tasks we worked on and the amount of time we spent on them during a particular day/week/month/time spance.


#### Code Structure

class Menu

- Create user
- Load user
- Exit

class Menus

- Create task
	- Enter new task name
- Load a task
	- List all the tasks
	- Ask you to choose your task
- Exit task


#### Project Roles

 Melissa & Michael - Set up the ActiveRecord interface (the model & controller)
 Tiffany is working on the view and other aspects with Michael and Melissa
 Joshua - date/time math and askii
 Jordan - assertions
 Renee - work on assertions and testing in general with Jordan