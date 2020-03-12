#this is my test file`
require "test/unit"
require_relative "../classes/employee.rb"

class EmployeeTest < Test::Unit::TestCase
  #testing is intitialize gives an empty array
  def test_initialize
    employee = Employee.new
    assert_equal([], employee.name)
  end

=begin
Test if veiw all input returns
name userscore and message
=end
def test_veiw_all_inputs
    employee = Employee.new
    return @name, @userscore, @message
    assert_equal([] [] [], employee.veiw_all_inputs)
  end
end


