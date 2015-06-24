class QuestionsController < ApplicationController

  def index
    @questions = Question.order(:votes_count)
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(
      title: params[:question][:title],
      description: params[:question][:description],
      user_id: session[:user_id])
      redirect_to "/"
  end

  def show
    @question = Question.find(params[:id])
    @question.views_count += 1
    @question.save
    @best_answer = @question.answers.where(best: true).take
    @other_answers = @question.answers.where.not(best: true)
  end

end
