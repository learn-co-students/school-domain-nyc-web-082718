require "pry"
class School

attr_accessor :name, :grade
attr_reader :roster, :student

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade].push(student)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
  roster.each_value do |name|
    name.sort!
    end
  @roster
end

end
