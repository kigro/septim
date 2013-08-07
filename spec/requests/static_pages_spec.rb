require 'spec_helper'

describe "StaticPages" do

let(:base_title) {"Septim Consulting"}

  describe "Home page" do
    it "should have the content 'Septim Consulting'" do
      visit root_path
      expect(page).to have_content('Septim Consulting')
    end

    it "should have the right title" do
      visit root_path
      expect(page).to have_title("#{base_title} | Home")
    end
  end

    describe "Automation page" do
    it "should have the content 'Automasjon'" do
      visit '/static_pages/automation'
      expect(page).to have_content('Automasjon')
    end

    it "should have the right title" do
      visit '/static_pages/automation'
      expect(page).to have_title("#{base_title} | Automation")
    end
  end

    describe "Beregninger page" do
    it "should have the content 'Beregninger'" do
      visit '/static_pages/beregninger'
      expect(page).to have_content('Beregninger')
    end

    it "should have the right title" do
      visit '/static_pages/beregninger'
      expect(page).to have_title("#{base_title} | Beregninger")
    end
  end
end
