class CreateCustomerConsolidators < ActiveRecord::Migration[5.0]
  def change
    create_join_table :customers, :consolidators do |t|
     
     t.index :customer_id
     t.index :consolidator_id

      t.timestamps
    end
  end
end
