class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer :identification_card
      t.string :name
      t.string :lastname
      t.string :location
      t.integer :phone

      t.timestamps
    end
  end
end
