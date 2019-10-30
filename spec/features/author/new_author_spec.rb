require 'rails_helper'

describe "New author page", type: :feature do

  it "should render withour error" do
    visit author_new_path
  end

  it "should have first name input field" do
    expect(author_new_path).to have_field('first_name_input')
  end
end