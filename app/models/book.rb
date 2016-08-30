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
  validates :name, :author_id, :publish_date, :picture, presence: true

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