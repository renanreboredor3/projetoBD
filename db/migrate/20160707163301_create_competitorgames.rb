class CreateCompetitorgames < ActiveRecord::Migration
  def change
    create_table :competitorgames do |t|
      t.references :game, index: true, foreign_key: true
      t.references :competitor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
