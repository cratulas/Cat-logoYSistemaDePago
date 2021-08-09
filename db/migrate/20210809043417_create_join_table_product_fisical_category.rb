class CreateJoinTableProductFisicalCategory < ActiveRecord::Migration[5.2]
  def change
    create_join_table :product_fisicals, :categories do |t|
      t.references :product_fisical, foreign_key: true, index: { name: "fisical_index" }
    end
  end
end
