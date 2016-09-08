class SearchController < ApplicationController
  def browse
    @books = Book.search(params[:search]).records.records
  end

  def details
    @book = Book.find(params[:book_id])
  end
end