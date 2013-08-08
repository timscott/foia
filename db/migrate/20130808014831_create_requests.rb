class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :address1
      t.string :address2
      t.string :phone
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :zip
      t.references :user
      t.string :country
      t.string :middle_initial

      t.timestamps
    end
  end
end
