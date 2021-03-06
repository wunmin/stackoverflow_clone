class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    # redirect_to "/questions/<%= question_id %>"

    Answer.create(
      description: params[:answer][:description],
      user_id: session[:user_id],
      question_id: params[:question_id].to_i)
    redirect_to "/"
  end

end
