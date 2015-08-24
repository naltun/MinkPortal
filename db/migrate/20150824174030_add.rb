class Add < ActiveRecord::Migration
  def change
  	add_column :tsightings, :contact_code, :string
  	add_column :tsightings, :reported_by, :string
  	add_column :tsightings, :reported_to, :string
  	add_column :tsightings, :follow_up, :string
  end
end
