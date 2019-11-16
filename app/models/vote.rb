class Vote < ApplicationRecord
  belongs_to :account
  belongs_to :votable, polymorphic: true

  validates :account_id, presence: true,
            uniqueness: {scope: [:votable_id, :votable_type], message: "Already voted"}
  validates :votable_id, presence: true,
            uniqueness: {scope: [:account_id, :votable_type], message: 'Already voted'}
  validates :votable_type, presence: true,
            uniqueness: {scope: [:account_id, :votable_id], message: 'Already voted'}
end
