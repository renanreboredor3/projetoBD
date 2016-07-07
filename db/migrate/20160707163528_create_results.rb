class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :event, index: true, foreign_key: true
      t.references :competitor, index: true, foreign_key: true
      t.timestamp :time
      t.integer :distance
      t.integer :height

      t.timestamps null: false
    end
  end
end
