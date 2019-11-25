class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :trip_image, null: false
      t.string :places, null: false
      t.string :points_of_interest, null: false
      t.datetime :time, null: false
      t.string :duration, null: false
      t.string :city, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
