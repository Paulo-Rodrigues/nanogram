require 'rails_helper'

RSpec.feature 'Likes', type: :feature do
  before do
    @user = create(:account);login_as(@user)
    @post = create(:post, :with_image, account_id: @user.id)
    @comment = create(:comment, account_id: @user.id, commentable_id: @post.id)
  end

  scenario 'user like a post' do
    visit post_path(@post)

    click_link "Like", match: :first

    expect(page).to have_link("Unlike")
    expect(@post.votes.count).to be_equal(1)
  end

  scenario 'user unlike post' do
    visit post_path(@post)
    click_link "Like", match: :first

    expect(@user.votes.count).to be_equal(1)

    click_link "Unlike", match: :first

    expect(page).to have_link("Like")
    expect(@user.votes.count).to be_equal(0)
  end

  scenario 'like comment' do
    visit post_path(@post)

    click_link "Like", match: :first

    expect(@user.votes.count).to be_equal(1)
  end
end
