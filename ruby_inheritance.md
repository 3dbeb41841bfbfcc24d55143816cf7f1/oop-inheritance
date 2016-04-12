#  Object-Oriented Inheritance in Ruby

Previous Lesson: https://github.com/ATL-WDI-Curriculum/oop-intro

## Learning Objectives
- Define inheritance in the context of OOP
- Write a Ruby class that inherits from another

#Framing (5 / 5)

Just like we get traits from our parents, we can use a feature called
**inheritance** to create multiple classes (children) that share properties and
methods from their parents.

You won't need to write parent / child classes much in this class, but we will
use inheritance to give some of our classes additional functionality, especially
with rails in a few weeks.

[Diagram](https://github.com/ATL-WDI-Curriculum/oop-inheritance/blob/master/200px-Calling_super_in_ruby.jpg)


#Information Dive (5 / 10)

For the next 5 minutes, research what OOP Inheritance Is.

http://rubylearning.com/satishtalim/ruby_inheritance.html

Read first 3 paragraphs

#T&T (5 / 15)

Now, turn & talk to your neighbor and discuss:

At a high level, what is inheritance and how might it be useful?
Why is inheritance for DRY'ing up your code?
Why is inheritance important for making better code?

#Here's an example:
```ruby
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



### You Do: Inheritance

- Make a person, then give them the super power you wish you had, display your heros power.
- Make a villian from person and give them a power and assign them an arch nemesis(hero).



## Visibility

When discussing object-oriented programming, you may hear the term "visibility".  This refers to the availability, or scope, of a method. Who can call this method on the object?

- Public: any one can call this method.  Public is default accessibility level for class methods.
- Private and Protected: (not common) Not visible to other objects from other classes.  Control visibility to other instances of that Class, including descendants.
 Privacy
By default, any method you define in Ruby (and most other languages too) is public. This means that anything outside of the object can call any of the methods, with the exception of initialize which is always private and can only be called by new.

Besides public you can also have private and protected methods.

-public can be called by anyone
-private can only be called from within the class
-protected can only be called by objects of the class and the defining subclasses

#Let’s try this out in the superhero's class by adding the protected keyword before defining the methods we want to protect, in our case, secert identity.



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

- inheritance: http://rubylearning.com/satishtalim/ruby_inheritance.html
- Visibility http://stackoverflow.com/questions/9882754/what-are-the-differences-between-private-public-and-protected-methods
- Private/Protected http://matthodan.com/2010/08/08/ruby-private-methods-vs-protected-methods.html
