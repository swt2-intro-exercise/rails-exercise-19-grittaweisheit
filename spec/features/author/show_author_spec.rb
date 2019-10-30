require 'rails_helper'

describe "author detail page", type: :feature do

  it "should render without error" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
  end

  it "should display details" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text('Alan')
    expect(page).to have_text('Turing')
    expect(page).to have_text('http://wikipedia.de/Alan_Turing')
  end
end
