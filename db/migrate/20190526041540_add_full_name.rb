class AddFullName < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :fullname, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
