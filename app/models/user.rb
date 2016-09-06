class User < ActiveRecord::Base
  ratyrate_rater
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, ImageUploader
  has_many :orders  
  has_many :comments

  def reviewer?
    if self.comments.count > 50
      true
    else
      false
    end
  end
end
