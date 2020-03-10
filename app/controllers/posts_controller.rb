class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show, :destroy]


  def index
    @posts = Post.all.order("created_at DESC").page(params[:page]).per(9)
    if params[:tag_name]
      @posts = @posts.tagged_with("#{params[:tag_name]}").order("created_at DESC")
    end
    @tags = ActsAsTaggableOn::Tag.most_used(8)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "投稿しました"
      redirect_to posts_path
    else
      flash[:alert] = "投稿に失敗しました"
      redirect_to new_post_path
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def edit
  end

  def update
    @post.update(post_params)
    flash[:notice] = "投稿の更新ができました"
    redirect_to posts_path
  end

  def destroy
    @post.destroy
    flash[:alert] = "投稿を削除しました"
    redirect_to posts_path
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
