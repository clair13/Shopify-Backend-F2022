class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
