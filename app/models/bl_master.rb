class BlMaster < ApplicationRecord
  belongs_to :shipping_company
  belongs_to :consolidator
  belongs_to :origin, class_name: "OriginDestination", foreign_key: "origin_id"
  belongs_to :destination, class_name: "OriginDestination", foreign_key: "destination_id"
  has_many :bl_houses
  
  validates :code_bl,presence:true
  validates :list_container,presence:true
  validates :dale_of_berthing,presence:true
  validates :code_travel,presence:true 
end
