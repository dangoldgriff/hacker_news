require 'spec_helper'

feature 'commenting on a link' do
  scenario 'successfully post a comment' do
    link1 = FactoryGirl.create(:link)
    visit links_path
    click_on 'comment'
    fill_in 'comment_comment_text', with: "such link"
    click_on 'Comment'
    page.should have_content "success"
  end

  scenario 'submit an invalid comment' do
    link1 = FactoryGirl.create(:link)
    visit links_path
    click_on 'comment'
    click_on 'Comment'
    page.should have_content "can't"
  end
end
  