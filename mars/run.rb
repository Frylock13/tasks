require_relative 'map'
require_relative 'robot'
require_relative 'exploration'
require 'byebug'

robots = []

# Map initializing
puts 'Map size: \'n n\' format'
splitted = gets.chomp.split(' ')
x = splitted[0].to_i
y = splitted[1].to_i
map = Map.new(x, y)

# Robots initializing \\ start exploration
loop do
  puts "Robots coordinates: \'x y direction(#{Map::DIRECTIONS})\' format. Leave the line empty if you want to run an exploration of Mars."
  splitted = gets.chomp.split(' ')
  break if splitted.empty?

  x = splitted[0].to_i
  y = splitted[1].to_i
  direction = splitted[2]

  raise 'Wrong format' if x > map.x || y > map.y || !Map::DIRECTIONS.include?(direction)

  puts 'Exploration path example: \'RRMLMRRML\''
  path = gets.chomp

  robots << Robot.new(x, y, direction, path)
end

Exploration.new(map, robots).start