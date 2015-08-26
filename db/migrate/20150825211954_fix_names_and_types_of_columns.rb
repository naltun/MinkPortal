class FixNamesAndTypesOfColumns < ActiveRecord::Migration
  def change
    change_column :users, :newsletter, :string

    rename_column :users, :land_owner, :landowner
    rename_column :users, :second_organisation, :coordinating_org
    rename_column :users, :postocde, :postcode
    rename_column :users, :owned_traps, :own_traps
    rename_column :users, :land_access_nodes, :land_access_notes

    rename_column :tsightings, :no_of_minks, :no_of_mink

    rename_column :rafts, :x_cord, :x_coord
    rename_column :rafts, :y_cord, :y_coord
    rename_column :rafts, :organisation, :coordinating_org
  end
end