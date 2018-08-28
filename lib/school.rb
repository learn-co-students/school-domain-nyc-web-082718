# code here!
require "pry"
class School
  attr_reader :name
  attr_accessor :roster, :student, :grade
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if !roster[grade]
      roster[grade] = [student]
    else
      roster[grade] << student
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
  hash = {}
  roster.each do |key, value|
    sorted = value.sort
    if !hash[key]
      hash[key] = sorted
    end
   end
   hash
  end

end
