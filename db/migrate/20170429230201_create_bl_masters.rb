class CreateBlMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :bl_masters do |t|
      t.string :code_bl
      t.string :list_container
      t.date :dale_of_berthing
      t.string :code_travel
      t.references :shipping_company, foreign_key: true
      t.references :consolidator, foreign_key: true
      t.references :origin
      t.references :destination
 

      t.timestamps
    end
  end
end
