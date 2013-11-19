class VotesController < ApplicationController
  def create
    if current_user == nil
      redirect_to "/users/new", notice: "You must sign in to vote"
    elsif current_user == current_user
      @vote = current_user.votes.create(vote_params)
      redirect_to "/links", notice: "Your vote has been counted!"
    end
  end


private

  def vote_params
    params.require(:vote).permit(:link_id)
  end
end
