class Api::GameAppController < ApplicationController

  def page
    if
      name = params[:name]
      if name.first.downcase == "a"
        @name = "Hey your name starts with 'A'"
      else 
        @name = name
      end
    else
      @message = "hey"
    end
    render 'page.json.jbuilder'
  end

@@answer = Array(1..100)
@@range = @@answer[rand(100)]
  def guess
    @message = "Guess a number #{@@answer.first} - #{@@answer.last}"
    if
      @guess = params[:guess]
      guess = @guess.to_i
      if guess < @@answer.first || guess > @@answer.last
        @message = "Please guess a number in the range of #{@@answer.first} - #{@@answer.last}"
      elsif guess == @@range
        @win = "You win!"
      elsif guess > @@range
        @win = "guess lower"
      elsif guess < @@range
        @win = "guess higher"
      end
    end
    render 'guess.json.jbuilder' 
  end
end
