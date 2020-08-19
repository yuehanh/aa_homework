require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @seq = []
    @sequence_length = 1
  end

  def play
    until game_over
      take_turn
      sleep(1)
      system("clear")
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless game_over
      round_success_message
      @sequence_length += 1
    end
    
  end


  def show_sequence
    @seq = []
    sequence_length.times do
      add_random_color
    end
    seq.each do |color|
      puts color
      sleep(0.5)
      system("clear")
      sleep(0.5)
    end
  end

  def require_sequence
    puts 'please enter the color in sequence on each new line'
    @seq.all? {|color| color == gets.chomp} ? sleep(0.5) : @game_over = true
  end

  def add_random_color
    seq << COLORS[rand(COLORS.length)]
  end

  def round_success_message
    puts "Next Round"
  end

  def game_over_message
      puts "Game Over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end


if $PROGRAM_NAME == __FILE__
  test = Simon.new
  test.play

end