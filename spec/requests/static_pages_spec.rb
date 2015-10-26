require 'spec_helper'

describe "Static pages" do

#  let (:base_title){ "Ruby on Rails Tutorial Samle App" }

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Samle App') }
    it { should have_title (full_title('')) }
    it { should_not have_title('| Home') }

#     it "should have the base title" do
#       visit '/static_pages/home'
#       expect(page).to have_title("Ruby on Rails Tutorial Sample App")
#     end

#     it "should not have a custom page title" do
#       visit root_path
#       expect(page).not_to have_title('| Home')
#     end   
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) } 
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
