class CreateJoinTableProductDigitalCategory < ActiveRecord::Migration[5.2]
  def change
    create_join_table :product_digitals, :categories do |t|
      t.index [:product_digital_id, :category_id]
      t.index [:category_id, :product_digital_id]
    end
  end
end

add_index :studies,
  ["user_id", "university_id", "subject_name_id", "subject_type_id"], 
  unique: true,
  name: 'my_index'

If using the :index option on references in a create_table block, it takes the same options hash as add_index as its value:

t.references :long_name, index: { name: :my_index }

