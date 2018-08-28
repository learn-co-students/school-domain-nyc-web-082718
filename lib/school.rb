# code here!
require 'pry'
class School

  attr_accessor :roster, :grade, :student

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, grade)
    roster.keys.include?(grade)? nil : roster[grade] = []
    roster[grade].include?(student)? nil : roster[grade] << student


  end

  def grade(grades)
    roster[grades]
  end

  def sort
    hash = {}
    roster.each do |grade, students|
      hash[grade]=students.sort

    end
    hash
  end


end
