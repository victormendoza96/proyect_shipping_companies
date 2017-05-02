class Ship < ApplicationRecord
  belongs_to :shipping_company

  validates :name,presence:true
  validates :acronym,presence:true
  validates :size,presence:true
  validates :capacity,presence:true, numericality: { only_integer: true }

end
