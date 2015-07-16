class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :fishery_trust_name, :string
    add_column :users, :contact_code, :string
    add_column :users, :organisation, :string
    add_column :users, :role_in_org, :string
    add_column :users, :phone_landline, :string
    add_column :users, :phone_mobile, :string
    add_column :users, :street_address, :string
    add_column :users, :postocde, :string
    add_column :users, :city, :string
    add_column :users, :forms_signed, :boolean
    add_column :users, :report_sightings, :boolean
    add_column :users, :monitor, :boolean
    add_column :users, :trapper, :boolean
    add_column :users, :dispatcher, :boolean
    add_column :users, :landowner, :boolean
    add_column :users, :peer, :boolean
    add_column :users, :num_of_rafts_given, :integer
    add_column :users, :num_of_traps_given, :integer
    add_column :users, :own_traps, :boolean
    add_column :users, :second_organisation, :string
    add_column :users, :start_date, :date
    add_column :users, :end_date, :date
    add_column :users, :newsletter, :boolean
    add_column :users, :own_carcass_storage, :boolean
    add_column :users, :how_heard_of_smi, :string
    add_column :users, :comments, :text
    add_column :users, :estate_name, :string
    add_column :users, :land_access_notes, :text
    add_column :users, :access_granted, :boolean
    add_column :users, :date_access_granted, :date
    add_column :users, :end_date_access, :date
    add_column :users, :share_data, :boolean
    add_column :users, :trap_codes, :string
  end
end