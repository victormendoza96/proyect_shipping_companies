class Consolidator < ApplicationRecord
     has_and_belongs_to_many :customers
     has_many :bl_masters

     validates :name,presence:true
     validates :phone, numericality: { only_integer: true }
     validates :location,presence:true
end
