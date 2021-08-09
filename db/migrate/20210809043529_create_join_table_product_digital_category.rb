class CreateJoinTableProductDigitalCategory < ActiveRecord::Migration[5.2]
  def change
    create_join_table :product_digitals, :categories do |t|
      t.references :product_digital, foreign_key: true, index: { name: "digital_index" }
    end
  end
end

