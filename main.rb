require "./game"
require "./player"
require "./question"

puts "Enter you name Player 1!"
firstName = gets.chomp.to_s
puts "I hope you are prepared #{firstName}!"
puts "Enter your name Player 2!"
secondName = gets.chomp.to_s
puts "Time to put your skills to the test #{secondName}!"

p1 = Player.new(firstName)
p2 = Player.new(secondName)

game = Game.new(p1, p2)

while game.players[0].life > 0 and game.players[1].life > 0 do
  
  puts "----NEXT TURN----"
  puts "Choose wisely #{game.current_player.name}:"
  question = Question.new
  puts "#{question.random_question}"
  answer = question.answer

  playerGuess = gets.chomp.to_i

  if playerGuess != answer
    game.lose_life
  elsif playerGuess == answer
    puts "Nice!!! You got it!!!"
  end

  puts game.current_score

  game.change_player


end
