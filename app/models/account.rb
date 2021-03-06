class Account < ApplicationRecord
  include Followable
  include Votable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_one_attached :avatar

  validates :username, presence: true, uniqueness: true,  length: {maximum: 140}
  
  def self.search(query)
    if query.present?
      where("username @@ :q", q: query)
    else
      all
    end
  end

end
