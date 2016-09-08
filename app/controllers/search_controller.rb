class SearchController < ApplicationController
  def browse
    @books = Book.search(params[:search]).records.records
  end

  def details
    
  end
end