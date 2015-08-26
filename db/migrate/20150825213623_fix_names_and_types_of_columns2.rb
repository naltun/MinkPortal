class FixNamesAndTypesOfColumns2 < ActiveRecord::Migration
  def change
  	rename_column :users, :owned_carcass_storage, :own_carcass_storage
    
    change_column :users, :forms_signed, :string

    add_column :users, :receives_newsletter_only, :boolean
    
  end
end
