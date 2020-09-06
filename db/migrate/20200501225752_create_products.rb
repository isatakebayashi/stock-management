class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.float :cost_price, null: false
      t.string :sku, limit: 10

      t.timestamps
    end

    add_index :products, :sku, unique: true
  end
end
