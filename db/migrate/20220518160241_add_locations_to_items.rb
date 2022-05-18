class AddLocationsToItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :location, null: true
  end
end
