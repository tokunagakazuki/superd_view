class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]

  def index
    @posts = Post.all.order("created_at DESC").page(params[:page]).per(9)
    if params[:tag_name]
      @posts = @posts.tagged_with("#{params[:tag_name]}").order("created_at DESC")
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to maps_path
    else
      redirect_to new_post_path
    end
  end

  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
    # @post = "a"
    # @comment = "a"
    # @comments = @post.comments
  end

  def edit
    
  end

  def update

  end

  def destroy

  end


  private

  def set_post
    @comment = Comment.new
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def post_params
    params.require(:post).permit(:title,:description,:image, :tag_list).merge(user_id: current_user.id)
  end
end
