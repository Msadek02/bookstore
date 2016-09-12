require 'elasticsearch/model'

class Book < ActiveRecord::Base
  belongs_to :author
  has_many :order_items
  acts_as_taggable
  acts_as_commentable
  ratyrate_rateable "quality"
  mount_uploader :picture, ImageUploader
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  validates :name, :author_id, :publish_date, :picture, :description, :inventory, :price, presence: true

  def categories
    self.tag_list
  end

  def self.find_by_category(category)
    Book.tagged_with(category)
  end

  def self.all_categories
    Book.tag_counts.pluck(:id, :name)
  end

  def almost_sold_out?
    if self.inventory < 10
      true
    else
      false
    end
  end

  def sold_out?
    if self.inventory == 0
      true
    else
      false
    end
  end

  def age_range
    "#{self.minimum_age} to #{self.maximum_age}"
  end
end