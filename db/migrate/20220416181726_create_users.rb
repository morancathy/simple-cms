class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.column "first_name", :string, :limit => 25   #string means VARCHAR      
      t.string "last_name", :string, :limit => 50   #shorthand syntax, does same as above. since column is default, dont need to write it
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40 
      
      t.timestamps
      # t.datetime "created_at"  
      # t.datetime "updated_at"
      #special columns, if column has one of these names, then rails automatically populates and updates for us. Very handly to have
      #on EVERY table. you'll know when created and when updated. rails manages this. Shorthad is t.timestamps      
    end
  end
#column definitions are not defined yet.
# it yierds up the table as the variable T
# then apply columns to that table


  def down
    drop_table :users 
  end 
end
