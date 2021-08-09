class OrderItem < ApplicationRecord
    belongs_to :product_digital
    belongs_to :order
end