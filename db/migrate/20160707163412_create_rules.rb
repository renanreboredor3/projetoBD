class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :name
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
