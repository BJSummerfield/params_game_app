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

  def guess
    if
      @guess = params[:guess]
      guess = @guess.to_i
      if guess == 36
        @win = "You win!"
      elsif guess > 36
        @win = "guess lower"
      elsif guess < 36
        @win = "guess higher"
      end
    end
    render 'guess.json.jbuilder' 
  end
end
