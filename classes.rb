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

  def download_csv
    # To a file
    CSV.open("./file.csv", "wb") do |csv|
      csv << @name
      csv << @userscore
      csv << @message
      csv << ["Total: #{score_total}"]
    end
  end
end


