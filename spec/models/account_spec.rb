require 'rails_helper'

RSpec.describe Account, type: :model do
  context 'respond_to' do
    it { is_expected.to respond_to(:email) }
    it { is_expected.to respond_to(:password) }
  end

  context 'associations' do
    it {is_expected.to have_many(:posts).dependent(:destroy)}
  end
end
