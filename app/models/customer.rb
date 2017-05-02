class Customer < ApplicationRecord
	has_and_belongs_to_many :consolidators
	has_many :bl_houses

	validates :identification_card,presence:true, uniqueness: true
	validates :name,presence:true
	validates :lastname,presence:true
	validates :location,presence:true
	validates :phone,numericality: { only_integer: true }
end
