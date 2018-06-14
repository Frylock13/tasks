require 'byebug'
class Exploration
  def initialize(map, robots)
    @map = map
    @robots = robots
  end

  def start
    robots.each_with_index do |robot, index|
      updated_robot = robot.execute_commands(map)

      puts "#{index + 1} robot: #{updated_robot.coordinates}"
    end
  end

  private

  attr_reader :map, :robots
end