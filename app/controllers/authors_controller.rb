class AuthorsController < ApplicationController

  before_action :find_author, only: [:edit, :update, :destroy]

  def new
    @author = Author.new
  end

  def index
    @authors = Author.order(:name)
  end

  def create
   @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path
    else
      render "new"
    end
  end

  def update
    if @author.update(author_params)
      redirect_to authors_path
    else
      render "edit"
    end
    
  end

  def destroy
    @author.destroy
    redirect_to authors_path
  end

  private

  def find_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name, :avatar)  
  end
end
