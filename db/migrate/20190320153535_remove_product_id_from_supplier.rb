class RemoveProductIdFromSupplier < ActiveRecord::Migration[5.2]
  def change
    remove_column :suppliers, :product_id, :integer
  end
end
