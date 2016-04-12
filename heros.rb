class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "#{@name} is #{@age} years old."
  end
end

class SuperHero < Person
  def initialize(name, age, superpower)
    super(name, age)
    @superpower = superpower
  end
  def to_s
  "#{@name} is #{@age} years old and has the superpower #{@superpower}"
end
end


wade = Person.new("Wade", 28)
DeadPool = SuperHero.new("Wade Willson", 28, "Healing")

puts "person #{wade.to_s}"
puts "person #{DeadPool.to_s}"

