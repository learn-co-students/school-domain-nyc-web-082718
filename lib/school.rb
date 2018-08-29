require "pry"

class School

attr_accessor :name, :grade, :roster

# def roster
# @hash
# end

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, grade)

  if !@roster.include?(grade)
      @roster[grade] = []
      @roster[grade].push(name)
    else @roster[grade].push(name)
    end
  end


  def grade(grade)
    @roster.each do |k, v|
      # binding.pry
      if k == grade
        array = []
        array.push(v).flatten
        return array.flatten
      end
    end
  end


def sort
@roster.each_value {|v| v.sort!}
end


end

# You should be able to get a sorted list of all the students where the strings in the student arrays are sorted alphabetically. For instance:
#
# ```ruby
# school.sort
# # => {9 => ["AC Slater", "Zach Morris"], 10 => ["Aardvark", "Kelly Kapowski"], 11 => ["Screech", "Xavier"]}
