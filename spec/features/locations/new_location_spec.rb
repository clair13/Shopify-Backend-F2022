require 'rails_helper'

feature 'Location' do
  scenario 'Add new location' do
    visit root_path
    click_link 'Locations'
    expect{
      click_link 'New location'

      fill_in 'City', with: 'London'
      fill_in 'Address', with: "East 123"
      click_button 'Submit'
    }.to change(Location, :count).by(1)
    expect(page).to have_content 'Location was successfully created.'
    expect(page).to have_link('Edit this location')
    expect(page).to have_link('Back to locations')
    expect(page).to have_button('Destroy this location')
  end
end