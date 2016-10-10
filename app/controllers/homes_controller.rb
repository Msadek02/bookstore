class HomesController < ApplicationController
  def index
  	if params[:category].present?
      @books = Book.find_by_category(params[:category]).page params[:page]
    else
      @books = Book.order(created_at: :desc).page params[:page]
    end
    @categories = Book.all_categories
  end
end