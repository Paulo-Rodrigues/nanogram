require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'associations' do
    it {is_expected.to belong_to(:votable)}
    it {is_expected.to belong_to(:account)}
  end
end
