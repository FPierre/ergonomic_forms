class AddPublicIdToPerson < ActiveRecord::Migration
  def change
    add_column :people, :public_id, :string
  end
end
