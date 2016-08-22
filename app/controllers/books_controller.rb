class BooksController < ApplicationController

  before_action :find_book, only: [:edit, :update, :destroy]

  def index
    @books = Book.order(created_at: :desc)
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
  end

  def show
  end

  def new
    @book = Book.new
  end

  def update
    if @book.update(book_params)
      redirect_to books_path(@book)
    else
      render "edit"
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  private 

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :author_id, :publish_date)  
  end

end
