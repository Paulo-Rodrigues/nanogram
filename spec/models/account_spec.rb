require 'rails_helper'

RSpec.describe Account, type: :model do
  context 'respond_to' do
    it { is_expected.to respond_to(:email) }
    it { is_expected.to respond_to(:password) }
    it {is_expected.to respond_to(:username)}
  end

  context 'validations' do
    it {is_expected.to validate_presence_of(:username)}
    it {is_expected.to validate_length_of(:username).is_at_most(140)}
    it {is_expected.to validate_uniqueness_of(:username)}
  end

  context 'associations' do
    it {is_expected.to have_many(:posts).dependent(:destroy)}
  end
end
