module Votable
  extend ActiveSupport::Concern

  def like(votable)
    votes.create(votable: votable, account_id: self.id)
  end

  def unlike(votable)
    post_to_unlike = find_vote(votable)
    votes.delete(post_to_unlike)
  end

  def liked?(votable)
    find_vote(votable).exists?
  end

  private

  def find_vote(votable)
    Vote.where(votable_id: votable.id, account_id: self.id)
  end

end
