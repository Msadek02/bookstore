class SearchController < ApplicationController
  def browse
    if params[:search].present?
      @books = Book.search(params[:search]).records.records
    end
  end
end
