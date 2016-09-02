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
end
