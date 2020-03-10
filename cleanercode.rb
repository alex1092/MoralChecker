#THESE ARE THE REQUIRED GEMS
require "artii"
require "tty-file"
require "csv"

#THESE ARE THE REQUIRED LOCAL FILES
require_relative "./classes.rb"

employees = Employee.new

system("clear")
#STARTING WELCOME SCREEN LOOP
exit_app = false
while exit_app == false

  #LOGO/ FRONT PAGE
  def front_page
    logo = Artii::Base.new
    puts logo.asciify("MoralTrack!")

    puts "------Welcome to MoralTrack choose your option-----"

    puts "1 - Enter your score\n"
    puts "2 - Admin\n"
    puts "3 - Exit"
  end

  front_page

  user_input = gets.chomp.to_i

  case user_input
  when 1
    system("clear")
    puts "Welcome user please enter your name" #this collects the users name
    username = gets.chomp

    puts "Ok #{username} from 1 - 10 how was your day "
    user_score = gets.chomp.to_i
    #THIS IS CHECKING THE USERS SCORE

    case user_score
    when 0...3
      puts "sounds like you had a pretty rough day #{username.capitalize}, let your manager know what happend"
    when 3...5
      puts "tommorow is a new day"
    when 5...8
      puts "Im glad you had a good day #{username.capitalize} :)"
    when 8..10
      puts "Great #{username.capitalize} sounds like you had a great day... Keep it up!!!"
    else
      puts "Invalid number"
    end
  #This stores the users message!!
  puts "Type your message bellow"
  user_message = gets.chomp
  employees.set_message(user_message) #COLLECTS THE USERS MESSAGE
  puts "Thanks for that :)"
  puts "press ENTER to continue"
  gets
  system("clear")

  #Saves the users name and score to a class
  employees.data(username, user_score)

when 2
    system("clear")
    puts "welcome admin\n"
    puts "What would you like to do?\n"
    puts "1 - Check stats\n"
    puts "2 - Download Data\n"
    puts "3 - Weekly data"
    puts "4 - Exit"

    admin_choice = gets.chomp.to_i

    case admin_choice
    when 1
      system("clear")
      puts "#{employees.get_data}\n"
      puts "Overall total: #{employees.score_total} "
      puts "Press ENTER to continue"
      gets
      system("clear")
    when 2
      puts "Ok Check your file.csv file" #FIGURE OUT HOW TO SEND DATA TO A FILE FOR DOWNLOAD
      employees.download_csv
      puts " pres ENTER to continue"
      gets
      system("clear")
    when 3
      puts "The total weekly score is: #{employees.score_total}\n"
      puts "Press ENTER to continue"
      gets
      system("clear")
    when 4
      puts "Thanks for using MoralTrack"
      exit_app = true #EXITS THE APP/LOOP
    else
      puts "Thats not a valid input"
    end
  when 3
    puts "Thanks for using MoralTrack"
    exit_app = true
  end
end
