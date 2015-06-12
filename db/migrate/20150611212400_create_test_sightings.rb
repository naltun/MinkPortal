class CreateTestSightings < ActiveRecord::Migration
  def change
    create_table :test_sightings do |t|
      t.string :x_coord
      t.string :y_coord
      t.string :date
      t.string :your_name
      t.string :contact_info
      t.string :catchment
      t.string :river
      t.string :no_of_minks
      t.string :status
      t.string :comments

      t.timestamps null: false
    end
  end
end
