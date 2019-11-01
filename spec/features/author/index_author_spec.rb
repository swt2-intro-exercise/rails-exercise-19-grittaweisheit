require 'rails_helper'

describe "index listing all authors" do
  it "should render without error" do
    visit index_author_path
  end

  it "should have a table with full names and homepages of all authors" do
    visit index_author_path
    within('th') do
      expect(page).to have_content('Name')
      expect(page).to have_content('Homepage')
    end
  end

  it "should have a link to create a new author" do
    expect(page).to have_link 'New', href: new_author_path
  end

end
