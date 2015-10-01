class AddContactCodeIndexToRafts < ActiveRecord::Migration
  def change
    add_index :rafts, :contact_code
  end
end
