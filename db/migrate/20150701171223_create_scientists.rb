class CreateScientists < ActiveRecord::Migration
  def change
    create_table :scientists do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
