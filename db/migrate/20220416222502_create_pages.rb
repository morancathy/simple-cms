class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.integer "subject_id" 
      t.string "name", :limit => 50
      t.integer "permalink"
      t.integer "position"
      t.boolean "visible"  

      t.timestamps
    end

    # add_index("pages", "subject_id")  #did this in seperate migreation, could have done this here
    # add_index("pages", "permalink")
  end
end
