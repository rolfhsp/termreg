require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Terminal Register'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Terminal Register')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Terminal Register | Home")
    end
  end
end
