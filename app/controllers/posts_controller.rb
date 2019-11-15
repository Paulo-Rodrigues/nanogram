class PostsController < ApplicationController
  before_action :authenticate_account!, except: [:show]
  before_action :find_post, only: [:show, :destroy]

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @post.account = current_account
  end

  def create
    @post = Post.new(post_params)
    @post.account = current_account

    if @post.save
      flash[:notice] = 'Post successfully created!'
      redirect_to @post
    else
      flash[:alert] = 'Could not create post!'
      render "new"
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = 'Post successfully destroyed!'
    redirect_to root_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:description, :image)
  end

end
