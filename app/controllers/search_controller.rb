class SearchController < ApplicationController
  def browse
    @books = Book.search(params[:search])
  end
end
