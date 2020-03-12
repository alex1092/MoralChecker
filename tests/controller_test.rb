#this is my test file`
require "test/unit"
require_relative "../classes/employee.rb"

class EmployeeTest < Test::Unit::TestCase
  #testing is intitialize gives an empty array
#   def test_initialize
#     employee = Employee.new
#     assert_equal([], employee.name)
#   end

  #testing if name_score pushes value to array
  def test_name_score(name, userscore)
    employee = Employee.new
    @name.push(name)
    @userscore.push(userscore)
    assert_equal(["alex"][10], employee.name_score)
  end
end
