require 'rails_helper'

RSpec.feature 'Create Post', type: :feature do
  before do
    @user = create(:account); login_as(@user)
  end
  scenario 'a user creates a post' do
    visit new_post_path

    fill_in "Description", with: 'Description'

    expect(page).to have_content('Description')
  end
end
