require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'responds_to' do
    it {is_expected.to respond_to :description}
    it {is_expected.to respond_to :active }
    it {is_expected.to respond_to :image}
  end

  context 'validations' do
    it {is_expected.to validate_presence_of(:image)}
  end

  context 'associations' do
    it {is_expected.to belong_to :account}
    it {is_expected.to have_many(:comments).dependent(:destroy)}
  end
end
