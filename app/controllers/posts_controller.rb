class PostsController < ApplicationController

  respond_to :html, :json

  def show
    @post = Post.find(params[:id])
  end

  def create
    # @post = Post.create(params[:post])
    @post = Post.new(params[:post])
    @post.save
    respond_with(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to post_path(@post.id)
    else
      render :show
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @category = @post.category
    @post.destroy
    redirect_to category_path(@category)
  end
end
