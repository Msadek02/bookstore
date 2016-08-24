class HomesController < ApplicationController
  def index
    if 
      @books = Book.search(params[:search]).records.present?
    end
  end

  def search
  end
end
