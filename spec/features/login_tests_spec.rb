require 'spec_helper'

describe "integration tests for login" do

  it "should show a link to Twitter when not logged in " do
    visit root_path
    expect(page).to have_content "Sign in with Twitter"
  end

  it "should correctly log in a user via twitter" do
    visit root_path
    click_link('Sign in with Twitter')
    expect(page).to have_content "Signed in."
  end

  it "should correctly log out a user" do
    visit root_path
    click_link('Sign in with Twitter')
    expect(page).to have_content "Signed in."
    click_link('Sign out')
    expect(page).to have_content "Sign in with Twitter"
  end
end