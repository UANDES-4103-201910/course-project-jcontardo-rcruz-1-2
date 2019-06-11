class AddAtributesToUsers < ActiveRecord::Migration[5.2]
  def change

    add_column :Users, :name, :string
    add_column :Users, :location, :string
    add_column :Users, :phone_number, :integer
    add_column :Users, :address, :string
    add_column :Users, :user_type, :string
  end

end
