#creating a class named planets
puts "What planet would you like to learn about?"
puts "1. Earth
2. Mars
3. Jupiter
4. Venus"

planet_choice = gets.chomp.downcase

class Planet
  attr_accessor :name, :color, :moons, :mass, :diameter, :solar_rotation, :distance_from_sun

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @color = planet_hash[:color]
    @moons = planet_hash[:moons]
    @mass = planet_hash[:mass]
    @diameter = planet_hash[:diameter]
    @solar_rotation = planet_hash[:solar_rotation]
    @distance_from_sun = planet_hash[:distance_from_sun]
  end

  def planet_paragraph
    return "The planet #{name} is a #{color} planet with #{moons} moon(s). #{name} has a #{mass} mass and is #{diameter}" \
    + " miles in diameter. The planet has a #{solar_rotation} hour day and is #{distance_from_sun} miles away from the sun."
  end

end

earth = Planet.new(name: "Earth", color: "blue, green, white and brown", moons: 1, mass: 5.972 * 10**32, diameter: 7899, solar_rotation: 24, distance_from_sun: 92960000)
mars = Planet.new(name: "Mars", color: "red", moon: 2, mass: 6.39 * 10**23, diameter: 4220, solar_rotation: 24, distance_from_sun: 141600000)
jupiter = Planet.new(name: "Jupiter", color: "red, white and brown", moon: 53, mass: 1.898 * 10**27, diameter: 86881000000, solar_rotation: 10, distance_from_sun: 483800000)
venus = Planet.new(name: venus, color: "yellowish white", moon: 0, mass: 4.867 * 10**24, diameter: 7520, solar_rotation: 2802, distance_from_sun: 670240000)


case planet_choice
when "earth", "1"
  puts earth.planet_paragraph
when "mars", "2"
  puts mars.planet_paragraph
when "jupiter", "3"
  puts jupiter.planet_paragraph
when "venus", "4"
else
  puts "That's not a planet on the list, silly!"
end

class SolarSystem
  attr_accessor :planets
  def initialize (planets)
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end
end
planetary_system = SolarSystem.new("saturn")
# planetary_system.add_planet(Planet.new("something about saturn"))
# planetary_system.add_planet(SolarSystem.new("Uranus", nil, nil, nil, nil, nil, nil))

puts planetary_system

#don't forget to delete this
#some change here to commite for github



# Create a SolarSystem class that has an attribute planets that has zero to many Planet instances.
# There are a few different options for how to associate the planets with your solar system:
# Create a method that adds a single planet to a solar system
# Create a method that adds a list of planets to an existing list of planets
# Use an array to store a list of objects
# Create and use a method
