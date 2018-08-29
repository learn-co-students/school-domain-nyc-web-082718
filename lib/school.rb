# code here!
class School

#roster = {keys of grade levels => value of student names in a array [stduent names]}

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if roster.key?(grade)
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    list = {}
    roster.each do |grade, students_name|
      list[grade] = students_name.sort
    end
    list
  end

end
