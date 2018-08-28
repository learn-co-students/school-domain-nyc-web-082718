class School

    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student(name, grade)
        unless @roster.has_key? grade
            @roster[grade] = [name]
        else 
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        return @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
    end
end
