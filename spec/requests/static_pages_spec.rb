require "rails_helper"

RSpec.describe "Static pages", type: :feature do
  # let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "has the h1 'Sample App'" do
      visit "/static_pages/home"
      expect(page).to have_selector("h1", text: "Sample App")
    end

    it "has the title 'Home'" do
      visit "/static_pages/home"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "does not have the custom title" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do
    it "has the h1 'Help'" do
      visit "/static_pages/help"
      expect(page).to have_selector("h1", text: "Help")
    end

    it "has the title 'Help'" do
      visit "/static_pages/help"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
  end

  describe "About page" do
    it "has the h1 'About Us'" do
      visit "/static_pages/about"
      expect(page).to have_selector("h1", text: "About Us")
    end

    it "has the title 'About Us'" do
      visit "/static_pages/about"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
  end

  describe "Contact page" do
    it "has the h1 'Contact'" do
      visit "/static_pages/contact"
      expect(page).to have_selector("h1", text: "Contact")
    end

    it "has the title 'Contact'" do
      visit "/static_pages/contact"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
  end
end
