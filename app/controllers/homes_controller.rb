class HomesController < ApplicationController
  def index
    @books = Book.order(created_at: :desc).page params[:page]
    @categories = Book.all_categories
  end
end
