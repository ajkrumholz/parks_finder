require 'rails_helper'

RSpec.describe '/' do
  describe 'when I visit the root path' do
    before { visit root_path }

    it 'has a form to retrieve parks from NPS API' do
      parks = ParksFacade.parks("TN")
      park = parks.first

      select "Tennessee", from: :state

      click_on "Find Parks"

      expect(page).to have_content(park.description)
      expect(page).to have_content(park.directions)
      expect(page).to have_content(park.hours[:monday])
    end
  end
end