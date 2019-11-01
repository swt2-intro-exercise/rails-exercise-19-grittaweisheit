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
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should have links to details, destroying and editing every author" do
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'Show', href: author_path(@alan)
    expect(page).to have_link 'Edit', href: edit_author_path(@alan)
    expect(page).to have_link 'Destroy', href: author_path(@alan)
  end

  it "should delete an author when told so" do
    @alan = FactoryBot.create :author
    visit authors_path
    @count = Author.count
    find(:xpath, "//tr[" + (@alan.id).to_s + "]/td[5]/a").click
    expect(Author.count).to eq(@count-1)
  end

end
