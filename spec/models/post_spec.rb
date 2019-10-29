require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'responds_to' do
    it {is_expected.to respond_to :description}
    it {is_expected.to respond_to :active }
  end

  context 'associations' do
    it {is_expected.to belong_to :account}
  end
end
