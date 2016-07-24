class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :firstname,    limit: 50,                   null: false
      t.string :lastname,     limit: 50,                   null: false
      t.string :thoroughfare, limit: 255
      t.string :city,         limit: 50
      t.string :postal_code,  limit: 5
      t.string :country,      limit: 50, default: 'France'
      t.string :phone,        limit: 20,                   null: false
      t.string :email,        limit: 50
      t.text :internal_comment
      t.datetime :birth_date

      t.timestamps
    end
  end
end
