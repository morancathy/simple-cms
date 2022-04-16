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
  end
end
