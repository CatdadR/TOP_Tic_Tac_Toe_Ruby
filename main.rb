require_relative 'lib/Board'
require_relative 'lib/Player'

def tictactoe
  puts "Play new game Y/N?"
  play = gets.chomp

  if play == "y"
    players 
  else 
    puts "y not entered game will not start"    
  end    
end

def players
  puts "Player 1 please enter your name followed by your symbol"
  player_1 = Player.new(gets.chomp, gets.chomp)
  puts "Hello #{player_1.name} your selected symbol is #{player_1.player_symbol}"
  puts "Player 2 please enter your name followed by your symbol"
  player_2 = Player.new(gets.chomp, gets.chomp)
  puts "Hello #{player_2.name} your selected symbol is #{player_2.player_symbol}"

  activegame(player_1, player_2)
end

def activegame(player_1, player_2)
  game = Board.new
  player_turn = 0 
  if rand(1..2) == 1
    player_turn = 1
  else 
    player_turn = 2
  end

  9.times do 
    if player_turn == 1
      puts "#{player_1} Select the space you wish to occupy"
      game.space_select(gets, player_1.player_symbol)
      player_turn = 2
    else
      puts "#{player_2} Select the space you wish to occupy"
      game.space_select(gets, player_2.player_symbol) 
      player_turn = 1
    end
      game.gameboard
      if game.game_state == player_1.player_symbol
        puts "Three in a row! #{player_1} wins the round!!!"
        player_1.wins += 1
        player_2.losses += 1
        finishedgame

        else if game.game_state == player_2.player_symbol
          puts "Three in a row! #{player_2} wins the round!!!"
          player_2.wins += 1
          player_1.losses += 1
          finishedgame
        end  
      end
  end
end

def finishedgame
  exit 
end

tictactoe
