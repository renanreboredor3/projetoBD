class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :city
      t.string :country

      t.timestamps null: false
    end
  end
end
