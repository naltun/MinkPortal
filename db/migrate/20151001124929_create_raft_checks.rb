class CreateRaftChecks < ActiveRecord::Migration
  def change
    create_table :raft_checks do |t|
      t.string :contact_code
      t.string :raft_code
      t.date :date
      t.boolean :any_species
      t.integer :mink
      t.integer :mink_scat
      t.integer :bird
      t.integer :cat
      t.integer :hedgehog
      t.integer :mouse
      t.integer :otter
      t.integer :pine_marten
      t.integer :rat
      t.integer :squirrel
      t.integer :stoat
      t.integer :water_vole
      t.integer :weasel
      t.integer :unidentif
      t.text :comments

      t.timestamps null: false
    end
  end
end
