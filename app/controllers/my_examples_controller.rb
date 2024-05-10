class MyExamplesController < ApplicationController
  def get_fortune
    fortune_number = rand(5) 
    fortune_array = ["Something bad will happen to you today", "Look out for falling rocks", "Things will be looking up for you soon", "I wouldn't do that if I were you", "Your about to make it rich!"]

    lotto_numbers = []
    while lotto_numbers.length < 6
      rand_number = rand(60) + 1

      #make sure the number is unique
      while lotto_numbers.include?(rand_number)
        rand_number = rand(60) + 1
      end

      lotto_numbers.push(rand_number)
    end
    
    render json: {fortune: "#{fortune_array[fortune_number]}",
                  lotto_numbers: lotto_numbers
                  }
  end
end
