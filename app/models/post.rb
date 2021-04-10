class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :content, presence: true

  def liked_by?(user)
    likes.find_by(user_id: user.id).present?
  end
end
