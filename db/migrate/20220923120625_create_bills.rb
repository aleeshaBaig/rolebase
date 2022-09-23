class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.integer :consumer_id
      t.string :company
      t.decimal :amount

      t.timestamps
    end
  end
end
