class CommentsController < ApplicationController
<<<<<<< Updated upstream
  # before_action :set_post

  def create
    @comment = Comment.create(content: comment_params[:content], post_id: comment_params[:post_id], user_id: current_user.id)
    @post = Post.find(params[:post_id])
    # if @comment.save
    #   redirect_to root_path
    # else
    #   @posts = @post.comments.includes(:user)
    #   flash.now[:alert] = 'メッセージを入力してください。'
    #   render root_path
    # end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
=======
  def create
    Comment.create(comment_params)
  end

  private
  def
>>>>>>> Stashed changes
    params.require(:comment).permit(:content).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
