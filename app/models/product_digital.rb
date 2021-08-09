class ProductDigital < ApplicationRecord
    has_and_belongs_to_many :categories
    has_one :photo, as: :imageable

    has_many :order_items
    has_many :orders, through: :order_items
end
