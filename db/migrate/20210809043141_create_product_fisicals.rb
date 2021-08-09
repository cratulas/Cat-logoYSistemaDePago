class CreateProductFisicals < ActiveRecord::Migration[5.2]
  def change
    create_table :product_fisicals do |t|
      t.string :name
      t.string :size
      t.text :description
      t.integer :stock
      t.decimal :price
      t.string :sku

      t.timestamps
    end
  end
end
