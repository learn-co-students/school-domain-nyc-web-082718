require "pry"

class School

  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade].push(name)
    else
      @roster[grade].push(name)
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    list = {}
    roster.each do |grade, name|
      list[grade] = name.sort
    end
    list
  end

end

# #
# asl = School.new("ASL")
# asl.add_student("Olivier", 12)
# asl.add_student("Jordan", 12)
# asl.add_student("Evans", 12)
#
# binding.pry
