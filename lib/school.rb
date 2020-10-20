class School

attr_accessor
attr_reader :name, :roster
attr_writer

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, grade)
  if @roster[grade].is_a?(Array)
      @roster[grade] << name
  else
    @roster[grade] = []
    @roster[grade] << name
  end
end

def grade(num)
  return @roster[num]
end

def sort
  sorted_roster = @roster
  @roster.map do |grade|
    sorted_roster[grade] = @roster[grade].sort
  end
  return sorted_roster

  # @roster.sort_by {|g| }

end

end
