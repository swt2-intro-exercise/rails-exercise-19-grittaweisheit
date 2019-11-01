require 'rails_helper'

describe "index listing all authors" do
  it "should render without error" do
    visit authors_path
  end

  it "should have a table with full names and homepages of all authors" do
    visit authors_path
    expect(page).to have_content('Name')
    expect(page).to have_content('Homepage')
  end

  it "should have a link to create a new author" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

end
