class HomesController < ApplicationController
  def index
  end

  def search
    @books = Book.search(params[:search]).records
  end
end
