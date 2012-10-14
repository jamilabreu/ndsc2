require 'spec_helper'

describe PagesController do

  describe "GET 'thirteen'" do
    it "returns http success" do
      get 'thirteen'
      response.should be_success
    end
  end

end
