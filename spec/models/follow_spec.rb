require 'rails_helper'

RSpec.describe Follow, type: :model do
  context "associations" do
    it {is_expected.to belong_to(:followable)}
    it {is_expected.to belong_to(:follower)}
  end

  context 'validations' do
    xit {is_expected.to validate_presence_of(:followable)}
  end
end
