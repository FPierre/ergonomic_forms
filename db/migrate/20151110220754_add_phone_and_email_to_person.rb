class AddPhoneAndEmailToPerson < ActiveRecord::Migration
  def change
    add_column :people, :phone, :integer
    add_column :people, :email, :string
  end
end
