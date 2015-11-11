class AddPublicIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :public_id, :string
  end
end
