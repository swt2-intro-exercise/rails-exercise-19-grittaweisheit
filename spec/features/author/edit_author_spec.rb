require 'rails_helper'

describe "edit author page" do
  before do
    @alan = FactoryBot.create :author
  end

  it "should render without error" do
    visit edit_author_path(@alan)
  end

  it "should update the authors info" do
    visit edit_author_path(@alan)
    fill_in "author[homepage]", :with => "www.alanturing.com"
    click_button "Save Author"
    @alan.reload
    expect(@alan.homepage).to eq("www.alanturing.com")
  end

end
