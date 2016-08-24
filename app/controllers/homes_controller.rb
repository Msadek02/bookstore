class HomesController < ApplicationController
  def index
    if params[:search].present?
      @books = Book.search(params[:search]).records
    end
  end
end
