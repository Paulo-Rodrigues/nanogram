class Post < ApplicationRecord
  belongs_to :account
  has_one_attached :image

  validates :image, presence: true
end
