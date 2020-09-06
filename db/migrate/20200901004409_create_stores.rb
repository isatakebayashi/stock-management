class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.string :cnpj, null: false
      t.bigint :store_id
    end
  end
end
