require 'spec_helper'

describe PagesController do

  describe "GET 'administration'" do
    it "should be successful" do
      get 'administration'
      response.should be_success
    end
  end

end
