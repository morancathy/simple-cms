class CreateUpdateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :update_tables do |t|
      change_column("pages", "permalink", :string)

      t.timestamps
    end
  end
end
