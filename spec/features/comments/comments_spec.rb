require 'rails_helper'

RSpec.feature 'Comments', type: :feature do
  before do
    @user = create(:account);login_as(@user)
    @post = create(:post, :with_image, account_id: @user.id)
  end

  scenario 'user can comment' do
    visit post_path(@post)

    fill_in 'Body', with: 'Commented'

    click_button "Comment"

    expect(page).to have_content('Commented')
  end
end
