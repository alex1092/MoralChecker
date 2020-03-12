#required files
require_relative "../classes/employee.rb"

#required gems
require "artii"
require "tty-prompt"
require "colorize"
require "csv"
require "colorized_string"
require "tty-progressbar"

#INITIALIZE CLASSES TO PASS TO METHODS
@employees = Employee.new
@prompt = TTY::Prompt.new


#THIS IS MY PROGRESS BAR METHOD
def progress_bar
  bar = TTY::ProgressBar.new("downloading [:bar]", total: 30)
  30.times do
    sleep(0.1)
    bar.advance(1)
  end
end

#Logo
def display_logo
  system("clear")
  logo = Artii::Base.new
  puts logo.asciify("MoralTrack!")
end

#MAIN MENU
def collect_main_menu_choice
  @prompt.select("Welcome To MoraleCheck What Would You Like To Do?".colorize(:blue)) do |menu|
    menu.enum "."
    menu.choice "Enter your score", 1
    menu.choice "Admin", 2
    menu.choice "Exit", 3
  end
end

#ENTER USERNAME
def collect_username
  puts "Welcome user please enter your name"
  return gets.chomp
end

#PROMPTS USER FOR THEIR SCORE FROM 1-10
def collect_score(username)
  puts "Ok #{username}, from 1 - 10 how was your day "
  gets.chomp.to_i
end

#THIS TAKES THE USERS SCORE AND RESPONDS WITH A MESSAGE
def respond_to_user_score(username, user_score)
  case user_score
  when 1...3
    puts "Sounds like you had a pretty rough day #{username.capitalize}, let your manager know what happened"
  when 3...5
    puts "Tommorow is a new day"
  when 5...8
    puts "I'm glad you had a good day, #{username.capitalize} :)"
  when 8..10
    puts "Great #{username.capitalize} sounds like you had a great day... Keep it up!!!"
  else
    puts "Invalid number"
  end
end

#COLLECTING USERS MESSAGE
def collect_user_message
  puts "Type your message below"
  gets.chomp
end

#DEFAULT PRESS ENTER TO CLEAR SCREEN
def press_enter_to_continue
  puts "Press ENTER to continue"
  gets
  system("clear")
end

#TAKES USER_MESSAGE AND STORES IT TO employees.set_message
def store_user_message(user_message)
  @employees.set_message(user_message)
  puts "Thanks for that :)"
  press_enter_to_continue
end

#STORES NAME AND SCORE
def store_user_data(username, user_score)
  @employees.name_score(username, user_score)
end

#DISPLAYS TOTALS
def display_total_scores_and_data
  system("clear")
  puts "#{@employees.veiw_all_inputs}\n"
  puts "Overall total: #{@employees.score_total} "
  press_enter_to_continue
end

def export_data_to_csv
  progress_bar
  puts "Ok, check your file.csv file"
  @employees.download_csv
  press_enter_to_continue
end

def display_total_weekly_score
  puts "The total weekly score is: #{@employees.score_total}\n"
  press_enter_to_continue
end

#ITERATES THROUGH ADMIN CHOICES
def collect_admin_menu_choice
  admin_choice = @prompt.select("What would you like to do?") do |menu|
    menu.enum "."
    menu.choice "Check Stats", 1
    menu.choice "Export Data to CSV", 2
    menu.choice "Weekly Report", 3
    menu.choice "Exit", 4
  end
end

#ADMIN FLOW
def run_admin_flow
  system("clear")
  puts "Welcome Admin"

  case collect_admin_menu_choice
  when 1
    display_total_scores_and_data
  when 2
    export_data_to_csv
  when 3
    display_total_weekly_score
  when 4
    puts "Thanks Admin"
    system("clear")
    return false
  else
    puts "Thats not a valid input"
  end

  true
end

#SHOWS THE USER SCORE FLOW
def run_user_score_flow
  system("clear")

  username = collect_username
  user_score = collect_score(username)
  respond_to_user_score(username, user_score)

  user_message = collect_user_message
  store_user_message(user_message)
  store_user_data(username, user_score)
end

#THIS METHOD RUNS THE APP
def run_app
  case collect_main_menu_choice
  when 1
    run_user_score_flow
  when 2
    run_admin_flow
  when 3
    puts "Thanks for using MoralTrack"
    press_enter_to_continue
    system("clear")
    exit!
  end

  true
end

# STARTING WELCOME SCREEN LOOP
keep_going = true
while keep_going == true
  display_logo
  keep_going = run_app
end

#Handles export csv erros
begin
  export_data_to_csv
rescue
  "whoops something went wrong :("
end

#handles errors with progress_bar
begin
  progress_bar
rescue
  "Loading files"
end
