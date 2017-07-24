class CreateSectionEdits < ActiveRecord::Migration[5.1]
  def change
    create_table :section_edits do |t|
      t.integer :admin_user_id
      t.integer :section_id
      t.string :summary

      t.timestamp
    end
    add_index('section_edits', ['admin_user_id', 'section_id'])
  end
end
