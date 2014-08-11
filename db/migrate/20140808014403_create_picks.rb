class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :pick_number
      t.references :player, index: true
      t.references :user, index: true
      t.references :draft, index: true

      t.timestamps
    end
  end
end
