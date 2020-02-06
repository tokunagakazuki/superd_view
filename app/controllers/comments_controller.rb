class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
  end

  private
  def
    params.require(:comment).permit(:content).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
