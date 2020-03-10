class Employee
    attr_reader :name, :userscore
  def initialize
   @name = []
   @userscore = []
  end
def data(name, userscore)
    @name.push(name)
    @userscore.push(userscore)
end

  def get_data
    return "#{@name.to_s} #{@userscore.to_s}"
  end

  def score_total
    return @userscore.sum
  end
end


