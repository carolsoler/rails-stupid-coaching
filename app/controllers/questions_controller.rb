class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == 'I am going to work'
      @reply = 'Great!'
    elsif last_character(params[:question]) == '?'
      @reply = 'Silly question, get dressed and go to work!'
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end

  def last_character(string)
    last_index = string.length - 1
    string[last_index]
  end
end
