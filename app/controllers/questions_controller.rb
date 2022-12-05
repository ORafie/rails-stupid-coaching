class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:pokemon]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question == "what time is it?"
      @answer = Time.now
    elsif @question == "hello"
      @answer = 'Hello here! And Welcome!'
    elsif @question.include?("?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

  # "what time is it?" Time.now, 'Hello here! And Welcome!'

  # @answers = @answers.select { |answer| answer == params[:answer] }
