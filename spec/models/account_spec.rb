require 'rails_helper'

RSpec.describe Account, type: :model do
  context 'respond_to' do
    it { is_expected.to respond_to(:email) }
    it { is_expected.to respond_to(:password) }
  end
end
