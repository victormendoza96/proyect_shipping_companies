class CreateConsolidators < ActiveRecord::Migration[5.0]
  def change
    create_table :consolidators do |t|
      t.string :name
      t.string :location
      t.integer :phone, :limit => 8

      t.timestamps
    end
  end
end
