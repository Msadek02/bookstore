class HomesController < ApplicationController
  def index
    if params[:search].present?
      puts "I made it in here"
      @books = Book.search(params[:search]).records
    end
  end

  def search
  end
end
