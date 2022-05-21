require 'rails_helper'

feature 'Item' do
  scenario 'Add new item' do
    visit root_path
    expect{
      click_link 'New item'

      fill_in 'Name', with: 'Joe'
      fill_in 'Quantity', with: "5"
      fill_in 'Date', with: '2022-05-30'
      fill_in 'Description', with: 'A new item'
      click_button 'Submit'
    }.to change(Item, :count).by(1)
    expect(page).to have_content 'Item was successfully created.'
    expect(page).to have_link('Edit this item')
    expect(page).to have_link('Back to items')
    expect(page).to have_button('Destroy this item')
  end
end