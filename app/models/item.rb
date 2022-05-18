class Item < ApplicationRecord
  belongs_to :location, optional: true

  validates_presence_of :name, :quantity, :date, :description
  validates_numericality_of :quantity
end
