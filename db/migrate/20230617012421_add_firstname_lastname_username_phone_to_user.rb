class AddFirstnameLastnameUsernamePhoneToUser < ActiveRecord::Migration[7.0]
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :integer
    add_column :users, :username, :string
    add_column :users, :is_admin, :boolean, default: false
end

def down
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :phone_number
    remove_column :users, :username
    remove_column :users, :is_admin
end

end
