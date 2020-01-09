class Robot
  LOOK = ['NORTH', 'EAST', 'SOUTH', 'WEST']

  def initialize(table, x = 1, y = 0, look = 'NORTH')
    @robot_x = 1
    @robot_y = 1
    if LOOK.include?(look)
        @look = look
    else
      puts 'invalid input'
      exit
    end
    if x < table.size[:width ] || y < table.size[:height]
      @robot_x = x
      @robot_y = y
    end
      @table = table
  end

  def action(action)
    #@look = action if LOOK.include?(action)
    r_move if action == 'MOVE'
    r_right if action == 'RIGHT'
    r_left if action == 'LEFT'
    r_report if action == 'REPORT'
  end

  private

  def r_move
    @robot_y +=1 if @look == "NORTH" && @robot_y + 1 >= @table.size[:height]
    @robot_y -=1 if @look == "SOUTH" && @robot_y - 1 <= @table.size[:height] && @robot_y - 1 > 0
    @robot_x +=1 if @look == "EAST" && @robot_x + 1 >= @table.size[:width]
    @robot_x -=1 if @look == "WEST" && @robot_x - 1 <= @table.size[:width] && @robot_y - 1 > 0
  end

  def r_right
    @look = LOOK[LOOK.index(@look) +1]
  end

  def r_left
    @look = LOOK[LOOK.index(@look) -1]
  end

  def r_report
    puts "x: #{@robot_x } y: #{@robot_y} look: #{@look}"
  end
end

