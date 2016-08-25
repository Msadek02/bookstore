class Author < ActiveRecord::Base
  has_many :books, dependent: :destroy
  mount_uploader :avatar, ImageUploader
end
