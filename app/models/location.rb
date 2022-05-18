class Location < ApplicationRecord
  has_many :items, dependent: :nullify

  validates_presence_of :city, :address
end
