class OriginDestination < ApplicationRecord
	has_many :bl_masters

	validates :code_location,presence:true, uniqueness: true
	validates :location,presence:true, uniqueness: true
end
