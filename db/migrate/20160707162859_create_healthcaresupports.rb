class CreateHealthcaresupports < ActiveRecord::Migration
  def change
    create_table :healthcaresupports do |t|
      t.references :medic, index: true, foreign_key: true
      t.references :federation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
