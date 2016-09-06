include ActionView::Helpers::TextHelper

class Author < ActiveRecord::Base
  has_many :books, dependent: :destroy
  mount_uploader :avatar, ImageUploader
  validates :name, :avatar, presence: true

  def premier_author?
    if self.books.count > 10
      true
    else
      false
    end
  end

  def display_name
     "#{self.name} #{pluralize(self.books.count,'book')}"
  end

  def self.all_premier_author
    all.select{|a| a.premier_author? }
  end
end