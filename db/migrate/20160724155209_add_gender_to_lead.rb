class AddGenderToLead < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :gender, :integer
  end
end
