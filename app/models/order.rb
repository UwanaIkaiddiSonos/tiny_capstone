class Order < ApplicationRecord
  belongs_to :user
  has_many :products
  belongs_to :carted_product
end