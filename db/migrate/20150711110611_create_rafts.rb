class CreateRafts < ActiveRecord::Migration
  def change
    #drop_table :rafts
    create_table :rafts do |t|
      t.string :x_cord
      t.string :y_cord
      t.string :river
      t.string :catchment
      t.date :start_date
      t.string :raft_code
      t.string :raft_or_tunnel
      t.date :status_change_date
      t.string :raft_status
      t.string :contact_code
      t.string :organisation
      t.string :landowner_contact_code
      t.string :dispatcher_contact_code
      t.text :access_notes
      t.text :comments
      t.string :created_by
      #t.references :user, index: true, foreign_key: true
      t.timestamps null: false

    end
      #add_index :rafts, [:user_id]
  end
end
