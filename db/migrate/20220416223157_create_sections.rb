class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.integer "page_id" 
      t.string "name", :limit => 50
      t.integer "position"
      t.boolean "visible"  
      t.string "content_type"
      t.text "content"

      t.timestamps
    end
  end
end
