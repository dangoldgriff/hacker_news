class VotesController < ApplicationController
  def create
    if @current_user = nil
      @vote = current_user.votes.create(vote_params)
      redirect_to "/links", notice: "Your vote has been counted!"
    else
      redirect_to "/users/new", notice: "You must sign in to vote"
    end
  end


private

  def vote_params
    params.require(:vote).permit(:link_id)
  end
end
