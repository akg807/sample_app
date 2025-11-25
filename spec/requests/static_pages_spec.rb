require "rails_helper"

RSpec.describe "Static pages", type: :feature do
  describe "Home page" do
    it "has the h1 'Sample App'" do
      visit "/static_pages/home"
      expect(page).to have_selector("h1", text: "Sample App")
    end

    it "has the title 'Home'" do
      visit "/static_pages/home"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
    it "has the h1 'Help'" do
      visit "/static_pages/help"
      expect(page).to have_selector("h1", text: "Help")
    end

    it "has the title 'Help'" do
      visit "/static_pages/help"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "has the h1 'About Us'" do
      visit "/static_pages/about"
      expect(page).to have_selector("h1", text: "About Us")
    end

    it "has the title 'About Us'" do
      visit "/static_pages/about"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
