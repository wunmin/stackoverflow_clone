class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    Answer.create(
      description: params[:answer][:description],
      user_id: session[:user_id],
      question_id: params[:question_id]
      )
  end

end
