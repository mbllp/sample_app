require 'spec_helper'

describe PagesController do

  render_views
  
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      expect(response.body).to match /MAN'S CHIEF END IS TO GLORIFY GOD AND ENJOY HIM FOREVER./m
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end
  
  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end
end
