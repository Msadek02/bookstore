class Book < ActiveRecord::Base
  belongs_to :author
  acts_as_taggable
  ratyrate_rateable

  def categories
    self.tag_list
  end

  def self.find_by_category(category)
    Book.tagged_with(category)
  end

  def self.all_categories
    Book.tag_counts.pluck(:id, :name)
  end
end