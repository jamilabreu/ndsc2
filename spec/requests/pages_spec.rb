require 'spec_helper'

describe "Pages" do
  
  describe "Thirteen page" do
    it "should have the content 'Sample App'" do
      visit '/pages/thirteen'
      page.should have_content('Sample App')
      page.should have_selector('title', text: "2013")
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get pages_index_path
      # response.status.should be(200)
    end
  end
  
  describe "About page" do
    it "should have the content 'About'" do
      visit '/pages/about'
      page.should have_content('About')
    end
  end
end
