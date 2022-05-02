class Question

attr_reader :question
attr_reader :answer

  def initialize
    num_1 = rand(1..20)
    num_2 = rand(1..20)
    @question = "What does #{num_1} plus #{num_2} equal?"
    @answer = num_1 + num_2
  end

  def check_answer?(user_input)
    result = false
    if(user_input == @answer)
      puts "YES! You are correct."
      result = true
    else
      puts "Seriously? No!" 
    end
    result
   end

end

