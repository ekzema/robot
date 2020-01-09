require './includes/table'
require './includes/robot'

input1 = ARGV
table = Table.new
robot = Robot.new(table, input1[0].to_i, input1[1].to_i, input1[2]) # params: table x y look

loop do
  puts 'Please enter ONE action(LEFT, RIGHT, MOVE, REPORT, STOP)'
  action = STDIN.gets.chomp.upcase
  robot.action(action)
  if action == 'REPORT' || action == 'STOP'
    break
  end
end