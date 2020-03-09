require "artii"
require_relative "./users.rb"
exit = false
while exit == false
logo = Artii::Base.new
puts logo.asciify("MoralTrack!")

puts "------Welcome to MoralTrack choose your option-----"

puts "1 -  Enter your score\n"
puts "2 - Admin\n"
puts "3 - Exit"

user_input = gets.chomp.to_i
if user_input == 1  # This compares the users input from 1-10
  system("clear")
  puts "Welcome user please enter your name" #this collects the users name
  username = gets.chomp
  puts "Ok #{username} from 1 - 10 how was your day "
  user_score = gets.chomp.to_i
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
elsif user_input == 2
    puts "welcome admin"
elsif user_input == 3
    puts "Thanks for using MoralCheck"
    exit = true
end
    employees = Employee.new(username, user_score)

end



