class AlterUsers < ActiveRecord::Migration[5.2]

  def up
    rename_table("users", "admin_users")     
    add_column("admin_users", "username", :string, :limit => 25, :after => "email")  #after works with SOME db. if db doesnt support it, it igmores it
    change_column("admin_users", "email", :string, :limit => 100)
    rename_column("admin_users", "password", "hashed_password")
    puts "*** adding an index***"
    add_index("admin_users", "username")  #add index on all foriegn keys and any column use frequently(makes looks up faster)
  end

  def down  #copy paste above and reverse order. then do the opossite
    remove_index("admin_users", "username") 
    rename_column("admin_users", "hashed_password", "password")
    change_column("admin_users", "email", :string, :default => '', :null => false)
    remove_column("admin_users", "username")  
    rename_table("admin_users", "users")  
  end

end
