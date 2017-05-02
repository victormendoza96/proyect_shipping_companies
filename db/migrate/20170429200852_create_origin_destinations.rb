class CreateOriginDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :origin_destinations do |t|
      t.string :code_location
      t.string :location

      t.timestamps
    end
  end
end
