class Category < ApplicationRecord
    has_and_belongs_to_many :product_digitals
    has_and_belongs_to_many :product_fisicals
end
