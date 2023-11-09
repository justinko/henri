class InitialMigration < ActiveRecord::Migration[7.1]
  def change
    create_table :quotes do |t|
      t.text :text, null: false, index: { unique: true }
      t.timestamps
    end

    create_table :ratings do |t|
      t.belongs_to :quote, foreign_key: true
      t.integer :number, null: false
      t.string :ip, null: false, index: { unique: true }
      t.timestamps
    end
  end
end
