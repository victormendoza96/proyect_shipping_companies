class ShippingCompany < ApplicationRecord
	has_many :bl_masters
	has_many :ships
	has_many :containers

	validates :name,presence:true
	validates :phone,numericality: { only_integer: true }
	validates :location,presence:true

	def self.show
		shipping = {}
		ShippingCompany.all.each do |l|
        shipping[l.first] = l.bl_masters
   		end
		puts shipping
	end
end
