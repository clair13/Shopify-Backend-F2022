require 'rails_helper'



RSpec.describe 'Delete Item',type: :feature do
  before(:each) do
    location = Location.create(city: 'London', address: 'street 123')
    @items = Item.create([
      { name: 'book',
        quantity: '80',
        date: '2022-06-05',
        description: 'New book1',
        location_id: location.id
      },
      {
        name: 'hat',
        quantity: '40',
        date: '2022-06-06',
        description: 'New hat1',
        location_id: location.id
      },
      {
        name: 'towel',
        quantity: '90',
        date: '2022-06-07',
        description: 'New towel',
        location_id: location.id
      }])
  end
  scenario 'Delete item from the list' do
    visit items_path
    expect{
      click_button('Delete' , match: :first)
    }.to change(Item, :count).by(-1)
    expect(page).to have_content 'Item was successfully destroyed.'
  end
end