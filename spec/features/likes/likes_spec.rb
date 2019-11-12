require 'rails_helper'

RSpec.feature 'Likes', type: :feature do
  before do
    @user = create(:account);login_as(@user)
    @post = create(:post, :with_image, account_id: @user.id)
  end

  scenario 'user like a post' do
    visit post_path(@post)

    click_link "Like"

    expect(page).to have_link("Unlike")
    expect(@post.votes.count).to be_equal(1)
  end

  scenario 'user unlike post' do
    visit post_path(@post)
    click_link "Like"

    expect(@user.votes.count).to be_equal(1)

    click_link "Unlike"

    expect(page).to have_link("Like")
    expect(@user.votes.count).to be_equal(0)
  end
end
