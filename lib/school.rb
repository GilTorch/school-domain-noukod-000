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
      sorted_by_key=@roster.sort {|element,element1| element[0] <=> element1[0]}.to_h
      sorted_by_array=sorted_by_key.sort {|element,element1| element[1] <=> element1[1]}.to_h
      return sorted_by_array
  end

end
