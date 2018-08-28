# code here!

class School
  
  attr_reader :name
  
  def initialize(name)
    @name=name
    @roster={}
  end
  
  def roster
    @roster
  end
  
  def add_student(name,grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def grade
    @roster[grade]
  end
  
  def sort
    @roster.map do |grade,students|
      grade => students.sort
    end
  end
  
end