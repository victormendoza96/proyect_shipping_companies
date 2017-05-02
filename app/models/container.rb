class Container < ApplicationRecord
  belongs_to :shipping_company
  belongs_to :bl_house

  validates :identifier,presence:true, uniqueness: true
  validates :size,presence:true
  validates :type_container,presence:true
end
