class CreateModalities < ActiveRecord::Migration
  def change
    create_table :modalities do |t|
      t.string :name
      t.references :activity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
