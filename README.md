# MoralTrack

### created by Alex little git: https://github.com/alex1092/MoralChecker

Trello located at https://trello.com/b/YzGTufvi/moraltrack

#### to install simply type into your terminal ``` bash ./install_and_run.sh ```

# Software Development Plan

## Purpose & Scope

- MoralTrack - Is designed to help employers track their staff’s moral as the weeks go by, its purpose is to ensure that staff's moral Is steady and helps employers make an educated decision on whether or not staff are happy.  This will help improve workplace culture and productivity 

- Moral is a very important factor of a company’s success, growth and staff’s productivity.  using MoralTrack will ensure employers know exactly how your staff's moral is tracking 

- MoralTrack is being developed just for this, too ensure staff are happy and productive and to help employers make educated decisions on how to address low moral by giving employers a detailed list of all employers their moral for the day and any message they add.  All of this will be downloadable in a document

- Employees will have the option to rate their moral from 1-10 and will also be able to leave a message about their day this will include anything that they enjoyed about their day, anything that went wrong and any suggestions the employee may have.  Employers/admin will be able to track daily stats, total stats (All moral points added together to give an overall moral score), read messages, suggestions and download documentation which store all data

- Moral Track’s target audience is any organization that understands the value in their staffs moral.  It can be used together with a Clock in/Clock out machine.  After a user clocks out, they will track their moral for the day and add a message.  The organization will then use this data in order to find anything that needs to be addressed.

## Motivation

- Moral in the workplace is often overlooked.  The employers are a vital part of any organization if not the most important. Employee morale describes the overall outlook, attitude, satisfaction, and confidence that employees feel at work. When employees are positive about their work environment and believe that they can meet their most important career and vocational needs, employee morale is positive or high and productivity will also be high.

## Features

1. DETAILED EASY TO USE HOME SCREEN

MoralTrack offers an easy to use home screen.  Displaying the MoralTrack logo and 3 options: 1. Enter Score 2. Admin 3. Exit the reason it is set like this is to ensure the users experience is smooth and flows from option to option 

2. LOOPS BACK TO THE HOME SCREEN AFTER DATA IS LOGGED

To make it easy for employers and employees the Home screen will appear after employees are finished logging their moral and adding their message, it will also loop back to the home screen after the admin has checked daily and weekly totals and downloaded files containing all stats 

3. THE ABILITY TO ADD EXTRA STAFF

Using classes, you can add as many employees as you want tracking as many staff as you want. This is incredibly useful if you have new staff and also make it useful for employers to track staff and their moral

4. DOWNLOAD CSV WITH STAFF DETAILS

In the admin panel you will have the option to download a detailed list of all staff, read messages and check staffs moral. This is useful if you need to show others how staffs moral is tracking and to help address problems within your organization


## User Interaction and Experience

data flow diagram https://github.com/alex1092/MoralChecker/blob/master/docs/dataflow_diagram.png

1. To run the application first you need to install all the gems and dependencies you can either type into your terminal ``` bash install_and_run.sh ``` or ``` bundle install ``` then to run MoralCheck type the following into your terminal ``` controller.rb ``` 

2. From this point the user will find themself at the home screen with 3 different options 1 - Enter your score 2 - Admin 3 - exit. 

3. If the user choses 1 - Enter your score they will be prompted with "Enter your name" Once the user enters their name it will be saved to the variable username. They will then have the opportunity to score there day from 1-10, their choice will be saved in the variable user_score.  The user will then be prompted to leave a message, the message will be saved in employees.set_message(user_message). Once complete the user will then return back to the front page and their input will be saved to @name, @userscore & @message arrays

4. If the user selects option 2 (Admin) they will be taken to the admin page where they will have 4 selections 1 - Check stats, 2 - Download data, 3 - weekly data & 4 - exit 

### From admin (user selects 2)
- If the user selects 1 - Check stats employees.get_data will be called and will return @name, @userscore & @message. the user will then be prompted to hit enter where they wil be returned to the front screen

- If the user selects 2 - Download data employees.download_csv will execute and @name, @userscore & @message will be sent to file.csv.  The user will then be prompted to return to the front screen 

- If the user selects 3 - Total Weekly employees.score_total will be called. This will show the total moral score of all users calculated

- if the user selects 4 - exit they will be returned to the front screen 

5. If the user selects 4 - exit the appication will close



## Diagram
	Develop a diagram which describes the control flow of your application. Your diagram must:
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilize a recognized format or set of conventions for a control flow diagram, such as UML.

## Implementation Plan
Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritize the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

Utilize a suitable project management platform to track this implementation plan

> Your checklists for each feature should have at least 5 items.

## Help Docs

Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements

