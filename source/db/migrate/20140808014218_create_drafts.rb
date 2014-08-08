class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
