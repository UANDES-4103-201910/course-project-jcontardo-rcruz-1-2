class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :encrypted_password
      t.string :email
      t.integer :phone_number
      t.string :address
      t.string :User_type
      t.string :location

      t.timestamps
    end
  end
end
