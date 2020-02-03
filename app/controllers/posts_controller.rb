class PostsController < ApplicationController
  def index
    @posts = Post.all.page(params[:page]).per(9)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else
      redirect_to new_post_path
    end
  end


  private

  def post_params
    params.require(:post).permit(:title,:description,:image, :tag_list).merge(user_id: current_user.id)
  end
end
