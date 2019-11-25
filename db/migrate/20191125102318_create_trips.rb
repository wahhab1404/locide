class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :description
      t.string :trip_image
      t.string :places
      t.string :points_of_interest
      t.string :time
      t.string :duration
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
