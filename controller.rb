
#THESE ARE THE REQUIRED GEMS
require "artii"

#THESE ARE THE REQUIRED LOCAL FILES
require_relative "./users.rb"

system("clear")
#STARTING WELCOME SCREEN LOOP
exit_app = false
while exit_app == false

  #LOGO
  logo = Artii::Base.new
  puts logo.asciify("MoralTrack!")

  puts "------Welcome to MoralTrack choose your option-----"

  puts "1 -  Enter your score\n"
  puts "2 - Admin\n"
  puts "3 - Exit"

  #CHECKING WHAT THE USER WANTS TO DO
  user_input = gets.chomp.to_i
  if user_input == 1
    system("clear")
    puts "Welcome user please enter your name" #this collects the users name
    username = gets.chomp
    puts "Ok #{username} from 1 - 10 how was your day "
    user_score = gets.chomp.to_i

    #THIS IS CHECKING THE USERS SCORE
    if user_score <= 3
      puts "sounds like you had a pretty rough day #{username.capitalize}, let your manager know what happend"
    elsif user_score > 3 && user_score <= 5
      puts "tommorow is a new day"
    elsif user_score > 5 && user_score < 8
      puts "Im glad you had a good day #{username.capitalize} :)"
    elsif user_score > 8 && user_score <= 10
      puts "Great #{username.capitalize} sounds like you had a great day... Keep it up!!!"
    else
      "Thats an invalid input"
    end

    #Saves the users name and score to a class
    employees = Employee.new([username], [user_score])

    #Admin choice
  elsif user_input == 2
    puts "welcome admin"

    #exits the terminal
  elsif user_input == 3
    puts "Thanks for using MoralCheck"
    exit_app = true
  end
end
