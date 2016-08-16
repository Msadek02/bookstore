class BooksController < ApplicationController

  before_action :find_book, only: [:edit, :update, :destroy]

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def new
    @book = Book.new
  end

  def update
  end

  def delete
    @book.destroy
    redirect_to root_path
  end

  
  private 

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :author, :publish_date)  
  end

end
