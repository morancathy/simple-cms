class CreateSectionEdits < ActiveRecord::Migration[5.2]
  def up
    create_table :section_edits do |t|
      t.integer "admin_user_id"
      t.integer "section_id"
      t.string "summary"

      t.timestamps
    end

    add_index("section_edits", ["admin_user_id", "section_id"]) #creates index on both columns together
  end

  def down
    drop_table :section_edits
  end
end
