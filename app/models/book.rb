class Book < ActiveRecord::Base
  belongs_to :author
  acts_as_taggable

  def categories
    self.tag_list
  end

  def self.find_by_category(category)
    Book.tagged_with(category)
  end
end