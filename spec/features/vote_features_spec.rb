require 'spec_helper'

feature 'voting on a link' do 

  before do 
    @user = FactoryGirl.create(:user)
    @link = FactoryGirl.create(:link)
  end
  scenario 'a user should be able to vote on a link' do
    visit new_session_path
    fill_in 'Email', :with => @user.email
    fill_in 'Password', :with => @user.password
    click_button 'Log In'
    click_on 'News'
    click_on 'Vote'
    page.should have_content "Your vote has been counted!"
  end 
end