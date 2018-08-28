class School

  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade)
    grade_roster = @roster[grade]
    grade_roster
  end

  def sort
    roster.each_value do |value|
      value.sort!
    end
  end

end
