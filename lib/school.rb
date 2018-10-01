# code here!
# code here!
class School

  attr_accessor :roster

  def initialize(school_name)
    @roster={}
  end

  def add_student(number,name)
    if(@roster[name]==nil)
      @roster[name] = []
      @roster[name] << number
    else
      @roster[name] << number
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
      @roster.collect do |key,students|
        students.sort
      end
  end

end
