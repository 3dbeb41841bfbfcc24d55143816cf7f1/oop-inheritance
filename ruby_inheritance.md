#  Object-Oriented Inheritance in Ruby

Previous Lesson: https://github.com/ATL-WDI-Curriculum/oop-intro

## Learning Objectives
- Define inheritance in the context of OOP
- Write a Ruby class that inherits from another



## Inheritance

Just like we get traits from our parents, we can use a feature called
**inheritance** to create multiple classes (children) that share properties and
methods from their parents.

You won't need to write parent / child classes much in this class, but we will
use inheritance to give some of our classes additional functionality, especially
with rails in a few weeks.

Here's an example:
```ruby
# person7.rb: inheritance

class Person
  attr_accessor :name
  attr_reader :hunger_level

  def initialize(initial_name, initial_hunger_level)
    @name = initial_name
    @hunger_level = initial_hunger_level
  end

  def introduction
    puts "Hello, I'm #{name}"
  end

  # Custom setter for hunger_level
  def hunger_level=(new_hunger_level)
    if new_hunger_level < 0
      @hunger_level = 0
    else
      @hunger_level = new_hunger_level
    end
  end

end

class LoudPerson < Person
  def introduction
    puts "HELLO, I'M #{name.upcase}!!"
  end
end

jill = Person.new("Jill", 10)
bob = LoudPerson.new("Bob", 10)

puts jill.introduction
puts

puts bob.introduction

puts "Bob's name: '#{bob.name}'"
bob.hunger_level = 5
puts "Bob hunger level: #{bob.hunger_level}"
```

### You Do: Inheritance

- Make a sleepy person, who sleeps through the introduction.
- Make a baby, who can only say "Dada" and is always hungry (hunger_level never reaches 0)



## Visibility

When discussing object-oriented programming, you may hear the term "visibility".  This refers to the availability, or scope, of a method. Who can call this method on the object?

- Public: any one can call this method.  Public is default accessibility level for class methods.
- Private and Protected: (not common) Not visible to other objects from other classes.  Control visibility to other instances of that Class, including descendants.


## Sample Questions

- Explain the use of self in Ruby
- Explain the difference between local, instance and class variables
- Define and differentiate between class and instance methods
-

## Vocabulary

* **class**: an object blueprint
* **instance**: a constructed class instance
* **sub-class**: a class derived through inheritance.
* **extends**: a class is "extended" into a sub-class.
* **self**: an instance's way of referring to itself.
* **super**: a sub-class' way of referring to its parent class.
* **public**: methods available outside of the class.
* **private**: methods available only within the class.
* **protected**: methods available to only the class and its descendants.

## Resources

- Getters and Setters: http://andrewsunglaekim.github.io/Get-set-ruby/
- Visibility http://stackoverflow.com/questions/9882754/what-are-the-differences-between-private-public-and-protected-methods
- Private/Protected http://matthodan.com/2010/08/08/ruby-private-methods-vs-protected-methods.html
