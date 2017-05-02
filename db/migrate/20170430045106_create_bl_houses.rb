class CreateBlHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :bl_houses do |t|
      t.references :bl_master, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
