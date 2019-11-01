require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'respond to ' do
    it {is_expected.to respond_to(:body)}
  end

  context 'associations' do
    it {is_expected.to belong_to(:account)}
    it {is_expected.to belong_to(:commentable)}
  end
end
