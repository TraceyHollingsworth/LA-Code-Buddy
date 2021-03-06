class User < ActiveRecord::Base
  has_many :buddies
  has_many :reviews
  has_many :votes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, AvatarUploader

  validates :display_name,
    presence: true,
    length: { maximum: 50 }
  validates :first_name,
    length: { maximum: 50 }
  validates :last_name,
    length: { maximum: 50 }

end
