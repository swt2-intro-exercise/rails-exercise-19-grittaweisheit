require 'rails_helper'

describe "New author page", type: :feature do

  it "should render withour error" do
    visit new_author_path
  end

  it "should have a text input field for the fisrt name, last name and homepage" do
    visit new_author_path
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should display error message when no last name is given" do
    visit new_author_path
    fill_in "author[first_name]", :with => "Nobody"
    fill_in "author[homepage]", :with => "www.example.de"
    click_button "Save Author"
    expect(page).to have_content("Last name can't be blank")
  end
end