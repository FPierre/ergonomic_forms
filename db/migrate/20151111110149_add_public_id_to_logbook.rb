class AddPublicIdToLogbook < ActiveRecord::Migration
  def change
    add_column :logbooks, :public_id, :string
  end
end
