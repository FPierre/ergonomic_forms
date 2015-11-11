class AddPublicIdToCar < ActiveRecord::Migration
  def change
    add_column :cars, :public_id, :string
  end
end
