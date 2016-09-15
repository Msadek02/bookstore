class SearchController < ApplicationController
  def browse
    @books = Book.search(params[:search]).records.records.page params[:page]
    @categories = Book.all_categories
  end

  def details
    @book = Book.find(params[:book_id])
  end
end