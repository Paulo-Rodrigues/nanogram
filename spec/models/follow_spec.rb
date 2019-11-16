require 'rails_helper'

RSpec.describe Follow, type: :model do
  context "associations" do
    it {is_expected.to belong_to(:followable)}
    it {is_expected.to belong_to(:follower)}
  end

  context 'validations' do
    it {is_expected.to validate_presence_of(:followable)}
    it {is_expected.to validate_presence_of(:follower)}
    it "not follow himself" do
      user = create(:account)
      user.follow(user)
      expect(user.follows.count).to be_equal(0)
    end
  end
end
