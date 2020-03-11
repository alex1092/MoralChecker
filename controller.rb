#THESE ARE THE REQUIRED GEMS
require "artii"
require "tty-prompt"

#THESE ARE THE REQUIRED LOCAL FILES
require_relative "./classes/employee.rb"
require_relative "./classes/progressbar.rb"
require_relative "./classes/download_csv.rb"

#CREATING CLASS INSTANCES
prompt = TTY::Prompt.new
employees = Employee.new

system("clear")
#STARTING WELCOME SCREEN LOOP
exit_app = false
while exit_app == false

  #LOGO/ FRONT PAGE
  logo = Artii::Base.new
  puts logo.asciify("MoraleTrack!")

  user_input = prompt.select("Choose your destiny?") do |menu|
    menu.enum "."
    menu.choice "Enter your score", 1
    menu.choice "Admin", 2
    menu.choice "Exit", 3
  end

  case user_input
  when 1
    system("clear")
    puts "Welcome user please enter your name"
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

    #STORES USERS MESSAGE
    puts "Type your message bellow"
    user_message = gets.chomp
    employees.set_message(user_message) #COLLECTS THE USERS MESSAGE
    puts "Thanks for that :)"
    puts "press ENTER to continue"
    gets
    system("clear")

    #SAVES EMPLOYEE NAME AND SCORE
    employees.data(username, user_score)

    #ADMINS MENU
  when 2
    system("clear")
    puts "Welcome Admin"

    admin_choice = prompt.select("What would you like to do?") do |menu|
      menu.enum "."
      menu.choice "Check Stats", 1
      menu.choice "Export Data to CSV", 2
      menu.choice "Weekly Report", 3
      menu.choice "Exit", 4
    end

    case admin_choice
    #THIS SHOWS TOTAL SCORE AND USERS DATA
    when 1
      system("clear")
      puts "#{employees.get_data}\n"
      puts "Overall total: #{employees.score_total} "
      puts "Press ENTER to continue"
      gets
      system("clear")

      #THIS DOWNLOADS ALL DATA TO FILE.CSV
    when 2
      progress_bar
      puts "Ok Check your file.csv file"
      employees.download_csv
      puts " pres ENTER to continue"
      gets
      system("clear")

      #DISPLAYS TOTAL WEEKLY SCORE
    when 3
      puts "The total weekly score is: #{employees.score_total}\n"
      puts "Press ENTER to continue"
      gets
      system("clear")

      #EXITS THE APP/LOOP
    when 4
      puts "Thanks Admin"
      system("clear")
    else
      puts "Thats not a valid input"
    end

    #EXITS APP
  when 3
    puts "Thanks for using MoraleTrack"
    exit_app = true
    system("clear")
  end
end
