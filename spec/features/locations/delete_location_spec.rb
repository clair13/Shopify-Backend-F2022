require 'rails_helper'



RSpec.describe 'Delete Location',type: :feature do
  before(:each) do
    @locations = Location.create([
      { city: 'London',
        address: 'north 123'
      },
      {
        city: 'Newcastle',
        address: 'south 123'
      },
      {
        city: 'Barcelona',
        address: 'west 124'
      }])
  end
  scenario 'Delete location from the list' do
    visit locations_path
    expect{
      click_button('Delete' , match: :first)
    }.to change(Location, :count).by(-1)
    expect(page).to have_content 'Location was successfully destroyed.'
  end
end