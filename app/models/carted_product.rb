class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product
  belongs_to :user

  def status
    if id
      status = "carted"
    end
  end
end

