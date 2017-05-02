class BlHouse < ApplicationRecord
  belongs_to :bl_master
  belongs_to :customer
  has_many :containers
end
