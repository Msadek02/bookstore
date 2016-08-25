require 'elasticsearch/model'

class Book < ActiveRecord::Base
  belongs_to :author
  acts_as_taggable
  acts_as_commentable
  ratyrate_rateable "quality"
  mount_uploader :avatar, AvatarUploader
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

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