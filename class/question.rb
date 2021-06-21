class Question 

  def initialize(answer)
    @answer = answer
  end

  def random_question
    num1 = rand(101)
    num2 = rand(101)
    
    @answer = num1 + num2
    puts "What is #{num1} + #{num2} equal to"
  end
  
end

