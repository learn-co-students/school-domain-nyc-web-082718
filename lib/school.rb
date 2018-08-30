# code here!

require "pry"

class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)

    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    # binding.pry
    @roster[grade]
  end

  def sort
    new_roster = {}
    roster.each do |grade, name|
      new_roster[grade] = name.sort
    end
    new_roster

    # new_roster[key] = @roster.values.sort
    @roster[grade] = name.sort
  end

end


fox_lane = School.new("Fox Lane")
fox_lane.add_student("Jordan", 12)
fox_lane.add_student("Ollie", 12)
  # binding.pry
