class VotesController < ApplicationController
  def create
    Vote.create(
      vote: params[:vote].to_i,
      voteable_id: params[:voteable_id].to_i,
      voteable_type: params[:voteable_type])
    @votes = Question.find(params[:voteable_id]).votes_count
    render json: {votes: @votes}
  end
end
