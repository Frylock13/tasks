class Map
  attr_reader :x, :y

  DIRECTIONS = %w[N E S W].freeze

  def initialize(x, y)
    @x = x
    @y = y
  end

  def next_cell(robot_x, robot_y, direction)
    new_coordinates = { x: robot_x, y: robot_y }

    case direction
    when 'N'
      new_coordinates[:y] += 1
    when 'E'
      new_coordinates[:x] += 1
    when 'S'
      new_coordinates[:y] -= 1
    when 'W'
      new_coordinates[:x] -= 1
    end

    if new_coordinates[:x].between?(0, x) && new_coordinates[:y].between?(0, y)
      new_coordinates
    else
      # If a robot is trying to cross the limit of map return the old ones
      {
        x: robot_x,
        y: robot_y
      }
    end
  end

  class << self
    def left_side(direction)
      current_index = DIRECTIONS.find_index(direction)
      DIRECTIONS[current_index - 1]
    end

    def right_side(direction)
      return 'N' if direction == 'W'
      current_index = DIRECTIONS.find_index(direction)
      DIRECTIONS[current_index + 1]
    end
  end
end
