#Gem require for csv
require "csv"


class Employee
  attr_reader :name, :userscore

  def initialize
    @name = []
    @userscore = []
    @message = []
  end

  def data(name, userscore)
    @name.push(name)
    @userscore.push(userscore)
  end

  def get_data
    return "#{@name.to_s} #{@userscore.to_s} #{@message.to_s}"
  end

  def score_total
    return @userscore.sum
  end

  def set_message(message)
    @message.push(message)
  end

  # def download_csv
  #   # To a file
  #   CSV.open("./file.csv", "wb") do |csv|
  #     csv << @name
  #     csv << @userscore
  #     csv << @message
  #     csv << ["Total: #{score_total}"]
  #   end
  # end


  def download_csv
    CSV.open("./file.csv", "w") do |csv|
      csv << ["Username", "Score", "Message", "Current total"]
      data = [@name, @userscore, @message]

      # Array#transpose turns an array like:
      #
      #   [['Alex', 'John', 'Mary'], [10, 1, 8], ['thanks mate', 'ugh', 'yay']]
      #
      # ...into an array like:
      #
      #   [['Alex', 10, 'thanks mate'], ['John', 1, 'ugh'], ['Mary', 10, 'yay']]
      #
      rows = data.transpose
      rows.each do |row|
        csv << row
      end
    end
  end
end
