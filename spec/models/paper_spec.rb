require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should create with title, venue and year" do
    paper = Paper.new(title:'Superduper Paper', venue: 'conference', year: 2018)
    expect(paper.title).to eq('Superduper Paper')
    expect(paper.venue).to eq('conference')
    expect(paper.year).to eq(2018)
  end

  it "should be invalid without a title, year (as number) or venue" do
    paper_without_title = Paper.new(venue: 'conference', year: 2018)
    paper_without_venue = Paper.new(title:'Superduper Paper', year: 2018)
    paper_without_year = Paper.new(title:'Superduper Paper', venue: 'conference')
    paper_with_nonumeric_year = Paper.new(title:'Superduper Paper', venue: 'conference', year: 'text')

    expect(paper_without_title).to be_invalid
    expect(paper_without_venue).to be_invalid
    expect(paper_without_year).to be_invalid
    expect(paper_with_nonumeric_year).to be_invalid
  end
end
