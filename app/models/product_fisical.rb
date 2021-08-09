class ProductFisical < ApplicationRecord
    has_and_belongs_to_many :categories
    has_many :photos, as: :imageable
end
