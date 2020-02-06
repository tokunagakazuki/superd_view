class CommentsController < ApplicationController
  # before_action :set_post

  def create
    @comment = Comment.create(content: comment_params[:content], post_id: comment_params[:post_id], user_id: current_user.id)
    if @comment.save
      redirect_to root_path
    else
      @posts = @post.comments.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render root_path
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
