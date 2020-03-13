#Calls the readme file in the terminal


require "thor"
 
class MyCLI < Thor
  desc "help", "This prints a string with the help docs"
      def help
        puts "
        Help File
  
        MoraleTrack
        
        to install simply type into your terminal *bash ./install_and_run.sh*
  
        or run *controller.rb* from the src file
        
        If that didn't work, we can install step by step 
        
        1. [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
        2. [Download the application files through github ](https://github.com/alex1092/MoraleChecker)
        3. [Install Bundler gem](https://bundler.io/)
        4. Navigate to the directory you saved MoraleCheck in your terminal
        5. Run the command *bundle install* in your terminal
        6. Once everything is installed properly simply run the command ``` ruby controller.rb ```"
      end
end
 
MyCLI.start(ARGV)

