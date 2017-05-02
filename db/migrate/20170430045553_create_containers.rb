class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.string :identifier
      t.string :size
      t.string :type_container
      t.references :shipping_company, foreign_key: true
      t.references :bl_house, foreign_key: true

      t.timestamps
    end
  end
end
