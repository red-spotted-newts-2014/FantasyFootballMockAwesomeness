class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :rank
      t.string :first_name
      t.string :last_name
      t.string :position
      t.integer :bye_week
      t.float :ADP
      t.references :pick, index: true

      t.timestamps
    end
  end
end
