class PostsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]

  def index
    @posts = Post.all.recent.paginate(:page => params[:page], :per_page => 5)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:content, :group_id)
  end

end
