class Game

  def initialize(player_1_input, player_2_input)

    @player_1_input = player_1_input
    @player_2_input = player_2_input
    @array = [@player_1_input, @player_2_input]

  end

  # def outcome()
  #   return "draw" if @array[0] == @array[1]
  #   return "scissors wins" if @array.include?("scissors") && @array.include?("paper")
  #   return "rock wins" if @array.include?("rock") && @array.include?("scissors")
  #   return "paper wins" if @array.include?("paper") && @array.include?("rock")
  # end

  def outcome()
    winners = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }
    if @player_1_input == @player_2_input

      return "Draw!"
    elsif winners[@player_1_input] == @player_2_input
      return "Player1  wins with #{@player_1_input}"
    elsif winners[@player_2_input] == @player_1_input
      "Player2 wins with #{@player_2_input}"
    end

  end
end
