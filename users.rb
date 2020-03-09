class Employee
    attr_accessor
    def initialize(name, userscore)
    @name = [name]
    @userscore = [userscore]
    end

    def get_name
        return @name
    end

    def get_score
        return @userscore
    end
    def set_score
        set_score = @userscore
    end
end


