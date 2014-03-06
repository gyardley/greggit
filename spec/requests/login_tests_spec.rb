require 'spec_helper'

describe "integration tests for login" do
  it "should show a link to Twitter when not logged in " do
      visit root_path
      page.html.should match /Sign in with Twitter/
  end

  it "should correctly log in a user via twitter" do
    visit root_path
    click_link('Sign in with Twitter')
    page.html.should match /Signed in./
  end

  it "should correctly log out a user" do
    visit root_path
    click_link('Sign in with Twitter')
    page.html.should match /Signed in./
    click_link('Sign out')
    page.html.should match /Sign in with Twitter/
  end
end