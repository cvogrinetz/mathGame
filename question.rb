require './game'

class Question 

  attr_reader :answer

  def initialize
    @answer = -1
  end

  def random_question
    num1 = rand(101)
    num2 = rand(101)
    @answer = num1 + num2
    puts "What does #{num1} + #{num2} equal?"
  end  
end
    