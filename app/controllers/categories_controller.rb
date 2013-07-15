class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @post = Post.new()
  end

  def show
    @posts = Category.find(params[:id]).posts
  end

end
