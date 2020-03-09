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

test = Employee.new
test.data("Alex",10)
test.data("ron",5)
test.data("tim", 5)
p test.score_total

