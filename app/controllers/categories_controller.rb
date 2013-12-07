class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:notice] = "Category Created!"
      redirect_to categories_url
    else
      render 'new'
    end
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
