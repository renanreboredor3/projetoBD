class CreateFederations < ActiveRecord::Migration
  def change
    create_table :federations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
