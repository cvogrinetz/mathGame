class Question 

  def initialize(answer)
    @answer = answer
  end

  # def random_question
  #   num1 = rand(101)
  #   num2 = rand(101)
    
  #   @answer = num1 + num2
  #   puts "What is #{num1} + #{num2} equal to?"

  #   playerAnswer = $stdin.gets.chomp

  #   if playerAnswer == @answer
  #     puts "You are correct!"
  #   else
  #     puts "You are soo wrong!"
  #   end
  # end
  
end

def random_question
  num1 = rand(101)
  num2 = rand(101)
  
  answer = num1 + num2
  puts "What is #{num1} + #{num2} equal to?"
  
  puts "TESTING ANSWER--------#{answer.class}"
  puts "TESTING ANSWER--------#{answer}"

  playerAnswer = $stdin.gets.chomp.to_i

  puts "Testing PLAYER ANSWER------#{playerAnswer}"
  puts "Testing PLAYER ANSWER------#{playerAnswer.class}"

  if playerAnswer == answer
    puts "You are correct!"
  else
    puts "You are soo wrong!"
  end
end

random_question()

