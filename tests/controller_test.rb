#this is my test file`


require 'test/unit'
require_relative '../src/classes.rb'


class EmployeeTest < Test::Unit::TestCase
    
    #HERE I AM TESTING IF INITIALIZE RETURNS 3 SEPEREATE ARRAYS
    def test_initialize
        assert_equal([],[],[])
    end

    #HERE I AM TESTING IF DATA RETURNS 2 ARRAYS WITH NAME AND STAT DATA
    def test_data(name, stat)
        employee.data(["Name"], [10])
        assert_equal(["Name"] [10], employee.data)
    end
end
employee = Employee.new
