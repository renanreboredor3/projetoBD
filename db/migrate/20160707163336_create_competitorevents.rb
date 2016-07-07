class CreateCompetitorevents < ActiveRecord::Migration
  def change
    create_table :competitorevents do |t|
      t.references :event, index: true, foreign_key: true
      t.references :competitor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
