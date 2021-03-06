class Post < ApplicationRecord
  belongs_to :account
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :votable, dependent: :destroy
  has_one_attached :image

  scope :with_eager_loaded_image , -> {eager_load(image_attachment: :blob)}

  validates :image, presence: true
end
