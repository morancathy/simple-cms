class CreateAddIndices < ActiveRecord::Migration[5.2]
  def change
    create_table :add_indices do |t|
      add_index("pages", "subject_id")  #could have doe this in the original pages table migration. 
      add_index("pages", "permalink")
      add_index("sections", "page_id") 

      t.timestamps
    end
  end
end
