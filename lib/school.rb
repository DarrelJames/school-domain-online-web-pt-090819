# code here!
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
    roster[grade]
  end
  
  def sort
    roster.sort.to_h
  end
  
end