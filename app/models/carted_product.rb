class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  has_many :products
  has_many :users
  belongs_to :order

  def status
    if id
      status = "carted"
    end
  end
end

