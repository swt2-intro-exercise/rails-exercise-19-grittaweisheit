require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should create with title, venue and year" do
    paper = Paper.new(title:'Superduper Paper', venue: 'conference', year: 2018)
    expect(paper.title).to eq('Superduper Paper')
    expect(paper.venue).to eq('conference')
    expect(paper.year).to eq(2018)
  end
end
