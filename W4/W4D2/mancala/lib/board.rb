require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    @players = [name1, name2]
    place_stones
  end

  def place_stones
    cups.each_index do |i|
      # debugger
      if i == 6 || i == 13
        cups[i] = []
      else
        cups[i] += [:stone] * 4
      end
    end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' unless start_pos.between?(0, 13)
    raise 'Starting cup is empty' if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stone_count = cups[start_pos].length
    cups[start_pos] = []
    curr_pos = start_pos
    skip = (current_player_name == @players.first ? 13 : 6)
    while stone_count > 0
      curr_pos += 1
      unless curr_pos == skip
        cups[curr_pos % 14] << :stone
        stone_count -= 1
      end
    end
    render
    next_turn(curr_pos % 14)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if [6, 13].include?(ending_cup_idx)
      :prompt
    elsif cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ''
    puts ''
  end

  def one_side_empty?
    (0..5).all? { |i| cups[i].empty? } || (7..13).all? { |i| cups[i].empty? }
  end

  def winner
    case cups[6] <=> cups[13]
    when -1
      @players.last
    when 0
      :draw
    when 1
      @players.first
    end
  end
end
