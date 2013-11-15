class CommentsController < ApplicationController

  def new
    @comment = Comment.new(:commentable_id => params[:commentable_id],
                           :commentable_type => params[:commentable_type])

    @comments = Comment.where(:commentable_id => params[:commentable_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comments = Comment.where(:commentable_id => params[:commentable_id])
    if @comment.save
      redirect_to links_path, notice: "success"
    else
      render 'new'
    end
  end

  def show
    @comments = Comment.all 
  end

private

  def comment_params
    params.require(:comment).permit(:comment_text, :commentable_id, :commentable_type)
  end
end
