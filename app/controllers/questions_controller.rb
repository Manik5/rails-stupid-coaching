class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end
end

def coach_answer(question)
  if question.include? "?"
    return "Silly question, get dressed and got to work!"
  elsif question == "I am going to work right now!"
    return "Great!"
  else
    return "I don't care, get dressed and go to work!"
  end
end
