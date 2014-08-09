class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.string :difficulty_level
      t.string :draft_type
      t.integer :number_of_rounds
      t.references :user, index: true

      t.timestamps
    end
  end
end
