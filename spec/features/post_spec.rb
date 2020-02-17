require 'rails_helper'

feature 'post', type: :feature do
  let(:user) { create(:user) }

  scenario 'post' do
    # ログイン前には投稿ボタンがない
    visit root_path
    expect(page).to have_no_content('新規投稿')
    visit new_user_session_path
    # fill_in 'user_name', with: user.name
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    find('input[name="commit"]').click
    expect(current_path).to eq root_path
    expect(page).to have_content('新規投稿')

    expect {
      click_link('新規投稿')
      expect(current_path).to eq new_post_path
      fill_in 'title', with: 'フィーチャスペックのテスト'
      fill_in 'description', with: 'heihei'
      attach_file "image", "app/assets/images/detteiu.jpg"
      find('input[type="submit"]').click
    }.to change(Post, :count).by(1)
  end

end