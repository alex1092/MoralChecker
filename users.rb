class Employee
    attr_accessor
    def initialize(name, userscore)
    @name = [name]
    @userscore = [userscore]
    end

    def get_name
        return @name
    end

    def get_data
        return @name + @userscore
    end
end


