class Person
  def initialize(name, age)
    @name = name
    @nickname = name[0, 4]
    @age = age
  end
  
  def introduce
    return "#{@name} is #{@age} years old."
  end
  
  def birth_year
    return 2016 - @age.to_i
  end
  
  def nickname
    return @nickname
  end
end