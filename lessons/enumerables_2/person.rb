class Person
  attr_reader :name,
              :age,
              :children

  def initialize(name, age, kids)
    @name = name
    @age  = age
    @children = kids
  end
end

kardashians = []
kardashians << Person.new("Kourtney", 42, ["Mason", "Penelope", "Reign"])
kardashians << Person.new("Kim", 41, ["North", "Saint", "Chicago", "Psalm"])
kardashians << Person.new("Kris", 65, ["Kourtney", "Kim", "Khloe", "Rob", "Kendall", "Kylie"])
kardashians << Person.new("Khloe", 37, ["True"])





# Part ONE
# Given the objects and array below, write the code that returns minimum and maximum values:

# By name (alphabetically)
sorted_by_name = kardashians.sort_by do |person|
  person.name
end
p sorted_by_name
# By age (youngest and oldest)
# p
# By name length (shortest and longest)
# p
# By number of children (least and most)
# p

#Part TWO
# Given the object and array below, write the code that returns the sorted values:
# By name (alphabetically)
# By age (youngest to oldest)
# By name length (shortest to longest)
# By number of children (least to most)
