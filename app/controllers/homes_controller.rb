class HomesController < ApplicationController
  def index
  end

  def search
    @books = Book.search(book_params).records
  end
end
