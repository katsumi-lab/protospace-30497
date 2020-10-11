class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    comment.save
    redirect_to "/prototypes/#{comments.prototype.id}"

  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end