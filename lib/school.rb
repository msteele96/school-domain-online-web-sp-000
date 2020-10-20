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
  return @roster.sort
end

end
