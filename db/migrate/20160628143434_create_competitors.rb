class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :name
      t.string :sex
      t.references :federation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
