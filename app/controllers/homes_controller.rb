class HomesController < ApplicationController
  def index
      @books = Book.order(created_at: :desc).page params[:page]
  end
end
