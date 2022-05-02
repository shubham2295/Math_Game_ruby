require './Question'

class Game 

 attr_reader :players

 def initialize(player_1, player_2)
    @players = [player_1, player_2]  
 end

 def print_score
 puts "P1: #{self.players[0].life}/3 vs P2: #{self.players[1].life}/3"
 end

 def switch_player(current_player)
    self.players.select {|player| player!=current_player}[0]
 end

 def start_game

  current_player = self.players[0]

  while (self.players[0].life != 0 && self.players[1].life != 0)

    question = Question.new
    question_desc = question.question
    answer = question.answer

    puts "#{current_player.name}: #{question_desc}"
    user_input = gets.chomp
  
    is_true = question.check_answer?(user_input.to_i)

    if(!is_true)
      current_player.update_player_life
      if(current_player.life == 0)
        winner = self.switch_player(current_player)
        puts "#{winner.name} wins with a score of #{winner.life}/3 \n ----- GAME OVER ----- \n Good bye!"
        break
      end
    end

    self.print_score

    puts "----- NEW TURN -----"
    current_player = self.switch_player(current_player)
  
  end

end

end