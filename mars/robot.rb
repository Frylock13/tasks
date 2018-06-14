class Robot
  attr_reader :x, :y, :direction, :path

  def initialize(x, y, direction, path)
    @x = x
    @y = y
    @direction = direction
    @path = path
  end

  def coordinates
    "#{x} #{y} #{direction}"
  end

  def execute_commands(map)
    path.split('').each do |command|
      execute(command, map)
    end

    self
  end

  def execute(command, map)
    case command
    when 'L'
      turn_left
    when 'R'
      turn_right
    when 'M'
      move(map)
    else
      raise 'Command not found'
    end
  end

  def turn_left
    @direction = Map.left_side(direction)
  end

  def turn_right
    @direction = Map.right_side(direction)
  end

  def move(map)
    coordinates = map.next_cell(x, y, direction)
    @x = coordinates[:x]
    @y = coordinates[:y]
  end
end
