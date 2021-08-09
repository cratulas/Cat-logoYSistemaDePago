class CreateJoinTableProductFisicalCategory < ActiveRecord::Migration[5.2]
  def change
    create_join_table :product_fisicals, :categories do |t|
      t.index [:product_fisical_id, :category_id]
      t.index [:category_id, :product_fisical_id]
    end
  end
end
