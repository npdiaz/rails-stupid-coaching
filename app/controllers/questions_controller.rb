class QuestionsController < ApplicationController
  def ask
    @your_question
  end

  def answer
    @your_question = params[:your_question]
    if @your_question == "i am going to work right now!"
      @coach_answer = "Great!"
    elsif @your_question.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
