#Gem require for csv
require "csv"

class Employee
  attr_reader :name, :userscore

  def initialize
    @name = []
    @userscore = []
    @message = []
  end

  def input_data(name, userscore)
    @name.push(name)
    @userscore.push(userscore)
  end

  def veiw_all_inputs
    return @name, @userscore, @message
  end

  def score_total
    score_total = @userscore.sum
    return score_total
  end

  def set_message(message)
    @message.push(message)
  end

  def download_csv
    CSV.open("./file.csv", "w") do |csv|
      csv << ["Username", "Score", "Message", "Current total = #{score_total}"]
      data = [@name, @userscore, @message]
      rows = data.transpose
      rows.each do |row|
        csv << row
      end
    end
  end
end
