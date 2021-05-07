class CreateSpellbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :spellbooks do |t|
      t.integer :spell_id
      t.integer :user_id

      t.timestamps
    end
  end
end
