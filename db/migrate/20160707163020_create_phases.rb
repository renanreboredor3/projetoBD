class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :name
      t.datetime :phase_date
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
