require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "Ruby on Rails Training App" }
  describe "Home page" do
    describe "GET /static_pages/home" do
      it "should have the base title" do
        visit '/static_pages/home'
        page.should have_selector('title', :text => "#{base_title}")
      end
      it "should not have the base title" do
        visit '/static_pages/home'
        page.should have_selector('title', :text => "Home")
      end      
      # it "should have the right title" do
        # visit '/static_pages/home'
        # page.should have_selector('title',
                    # #:text => "Ruby on Rails Training App | Home")
                    # :text => "Home")
      # end
      # it "should work" do
        # get static_pages_home_path
        # response.status.should be(200)
      # end

      # it "should have the content 'Training App'" do
        # visit '/static_pages/home'
        # page.should have_content('Training App')
      # end

      # it "should have the h1 or h2 'Training App'" do
        # visit '/static_pages/home'
        # page.should have_selector('h1,h2', :text => 'Training App')
      # end
    end
  end

  describe "Help Page" do
    describe "GET /static_pages/help" do
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        #:text => "Ruby on Rails Training App | Help")
                        :text => "Help")
    end      
      # it "should work the image 'test.png'" do
        # visit '/static_pages/help'
        # page.should have_image('test.png')
      # end
    end
  end

  describe "About Page" do
    describe "GET /static_pages/about" do
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        #:text => "Ruby on Rails Training App | about")
                        :text => "About")
    end      
      # it "should work" do
        # get static_pages_about_path
        # response.status.should be(200)
      # end
    
      it "should have the content 'About Us'" do
        visit '/static_pages/about'
        page.should have_content('About Us')
      end            
    end
  end
   
  describe "Contact Us" do
    describe "GET /static_pages/contact" do
      it "should have the content 'Contact Us" do
        visit '/static_pages/contact'
        page.should have_content('Contact Us')
      end
    end
  end
end