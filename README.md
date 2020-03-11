# MoralTrack

### created by Alex little @CoderAcademy git: https://github.com/alex1092/MoralChecker

Trello located at - https://trello.com/b/YzGTufvi/moraltrack

#### to install simply type into your terminal ``` bash ./install_and_run.sh ```

# Software Development Plan

## Purpose & Scope

- MoralTrack Is designed to aid employers track their staff’s moral as the weeks go by, its purpose is to guarantee that staff's moral Is steady and helps employers make an well-informed decision on whether or not staff are happy.  This will help improve workplace culture and productivity 

- Moral is a very important influence of a company’s success, development and staff’s productivity.  using MoralTrack will ensure employers know exactly how your staff's moral is tracking 

- MoralTrack is being developed just for this, too ensure staff are happy and productive and to help employers make well-informed decisions on how to address low moral by giving employers a comprehensive list of all employers their moral for the day and any message or suggestions they add.  All of this will be downloadable in a csv file

- Employees will have the option to rate their moral from 1-10 and will also be able to leave a message about their day this will include anything that they enjoyed about their day, anything that went wrong and any suggestions the employee may have.  Employers/admin will be able to track daily stats, total stats (All moral points added together to give an overall moral score), read messages or suggestions and download documentation which store all data in a csv file

- Moral Track’s target audience is any organization that recognizes the value in their staffs moral.  It can be used together with a Clock in/Clock out machine.  After a user clocks out, they will track their moral for the day and add a message.  The organization will then use this data in order to find anything that needs to be addressed.

## Motivation

- Moral in the workplace is often overlooked.  The employers are a vital part of any organization if not the most important. Employee morale describes the overall outlook, attitude, satisfaction, and confidence that employees feel at work. When employees are positive about their work environment and believe that they can meet their most important career and vocational needs, employee morale is positive or high and productivity will also be high.

## Features

1. DETAILED EASY TO USE HOME SCREEN

MoralTrack offers an easy to use home screen.  Displaying the MoralTrack logo and 3 options: 1. Enter Score 2. Admin 3. Exit the reason it is arranged like this is to ensure the users experience is smooth and flows from option to option 

2. LOOPS BACK TO THE HOME SCREEN AFTER DATA IS LOGGED

To make it easy for employers and employees the Home screen will appear after employees are finished logging their moral and adding their message, it will also loop back to the home screen after the admin has checked daily and weekly totals and downloaded files containing all stats 

3. THE ABILITY TO ADD EXTRA STAFF

Using in built classes, you can add as many employees as you want tracking as many staff as you need. This is incredibly useful if you have new staff and also make it useful for employers to track staff and their moral

4. DOWNLOAD CSV WITH STAFF DETAILS

In the admin panel you will have the option to download a detailed list of all staff, read messages and check staffs moral. This is useful if you need to show others how staffs moral is tracking and to help tackle problems within your organization

## User Interaction and Experience

data flow diagram https://github.com/alex1092/MoralChecker/blob/master/docs/dataflow_diagram.png

1. To run the application first you need to install all the gems and dependencies you can either type into your terminal ``` bash install_and_run.sh ``` or ``` bundle install ``` then to run MoralCheck type the following into your terminal ``` controller.rb ``` 

2. From this point the user will find themselves at the home screen with 3 different options 1 - Enter your score 2 - Admin 3 - exit. 

3. If the user choses 1 - Enter your score they will be prompted with "Enter your name" Once the user enters their name it will be saved to the variable username. They will then have the opportunity to score there day from 1-10, their choice will be saved in the variable user_score.  The user will then be prompted to leave a message, the message will be saved in employees.set_message(user_message). Once complete the user will then return back to the front page and their input will be saved to @name, @userscore & @message arrays

4. If the user selects option 2 (Admin) they will be taken to the admin page where they will have 4 selections 1 - Check stats, 2 - Download data, 3 - weekly data & 4 - exit 

### From admin (user selects 2)
- If the user selects 1 - Check stats employees.get_data will be called and will return @name, @userscore & @message. the user will then be prompted to hit enter where they will be returned to the front screen

- If the user selects 2 - Download data employees.download_csv will execute and @name, @userscore & @message will be sent to file.csv.  The user will then be prompted to return to the front screen 

- If the user selects 3 - Total Weekly employees.score_total will be called. This will show the total moral score of all users calculated

- if the user selects 4 - exit they will be returned to the front screen 

5. If the user selects 4 - exit the application will close


## Diagram

Data flow diagram can be found at https://github.com/alex1092/MoralChecker/blob/master/docs/moralcheck_diagram.png

[Diagram](/docs/moralcheck_diagram.png)

## Implementation Plan

Implementation plan was created using Trello and can be located at https://trello.com/b/YzGTufvi/moraltrack

[Trello Board Screenshot 1](./docs/trello_board.png)

[Trello Board Screenshot 2](./docs/trello_board2.png)

## Help Docs

Help docs can be found at [Help Doc](./docs/help.md)

MoralTrack - Is designed to help employers track their staff’s moral as the weeks go by, its purpose is to ensure that staff's moral Is steady and helps employers make an educated decision on whether or not staff are happy.  This will help improve workplace culture and productivity 

### How to Install MoralCheck

to install simply type into your terminal ``` bash ./install_and_run.sh ```

If that didn't work, we can install step by step 

1. [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
2. [Download the application files through github ](https://github.com/alex1092/MoralChecker)
3. [Install Bundler gem](https://bundler.io/)
4. Navigate to the directory you saved MoralCheck in your terminal
5. Run the command ```bundle install``` in your terminal
6. Once everything is installed properly simply run the command ``` ruby controller.rb ```

### Requirements
MoralCheck needs you to have Ruby installed and the gems detailed in the gem file.  MoralCheck is a very simple application so there are little hardware & system requirements. 


#### If your struggling to download ruby 

[![How to install ruby](https://youtu.be/dMoK6AxyiUo)](https://youtu.be/dMoK6AxyiUo)


#### If your struggling to instal bundler 

[![How to install bundler](https://youtu.be/lMhoz29A2Jg)](https://youtu.be/lMhoz29A2Jg)

