class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(
      title: params[:question][:title],
      description: params[:question][:description])
      # user_id: session[:user_id])
  end

  def show
    @question = Question.find(params[:id])
    # @question.views += 1
    @best_answer = @question.answers.where(best: true).take
    @other_answers = @question.answers.where.not(best: true)
  end

end
