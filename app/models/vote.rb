class Vote < ApplicationRecord
  belongs_to :account
  belongs_to :votable, polymorphic: true
end
