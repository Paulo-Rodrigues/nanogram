require 'rails_helper'

RSpec.feature "Follow  feature" do
  before do
    @user1 = create(:account)
    @user2 = create(:account)
    login_as(@user1)
  end

  scenario 'user follow other user' do
    visit root_path

    click_link @user2.username


    expect(page).not_to have_link(@user2.username)
  end
end
