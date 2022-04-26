class CreateAdminUsersPagesJoin < ActiveRecord::Migration[5.2]
  def up
    create_table :admin_users_pages, :id => false do |t|   #plural, this table joins collection of admin_users and pages
      t.integer "admin_user_id"             # need 2 foriegn keys
      t.integer "page_id"                    # singular, referring to single record
    end
    
    add_index("admin_users_pages", ["admin_user_id", "page_id"]) #creates index on both columns together

  end

  def down
    drop_table :admin_users_pages
  end


end
