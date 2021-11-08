require "./player.rb"
require "./math_question.rb"


def startGame
player1 = Player.new('Player1')
player2 = Player.new('Player2')
  while player1.lives > 0 && player2.lives > 0
  
 
    mathQuestion(player1)
    puts("#{player1.name} lives: #{player1.lives} | #{player2.name} lives: #{player2.lives}")
    
    puts("----NEW TURN, SWITCH PLAYERS----")
    if player1.lives == 0 || player2.lives == 0
      break
    end
    mathQuestion(player2)
    
    puts("#{player1.name} lives: #{player1.lives} | #{player2.name} lives: #{player2.lives}")
    if player1.lives == 0 || player2.lives == 0
      break
    end
    puts("----NEW TURN, SWITCH PLAYERS----")
  end
  if player1.lives == 0
    puts "#{player2.name} wins!"
  else 
    puts "#{player1.name} wins!"
  end

end

startGame()

