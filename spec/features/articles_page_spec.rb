require 'rails_helper'

describe "Articles page" do
  
  describe "With a single article on the page" do
    before :each do
      FactoryGirl.create(:article)
    end
  #  it "Has the proper Article key" do
  #    visit articles_path
  #    expect(page).to have_content 'lu:2009:art1'
  #  end
    
  #  it "Spits out the correct bibtex" do
  #    visit articles_path
  #    expect(page).to have_content "@article{lu:2009:art1, author = {Luke}, title = {ohtuPruju}, journal = {ReadMe}, year = {2009}"
  #  end
    
  end
end
