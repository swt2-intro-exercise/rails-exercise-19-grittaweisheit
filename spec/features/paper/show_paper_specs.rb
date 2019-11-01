require 'rails_helper'

describe "show paper details" do

  it "should display full name of author" do
    @paper = FactoryBot.create :paper
    visit paper_path(@paper)
    expect(page).to have_text('Alan Turing')
  end

end
