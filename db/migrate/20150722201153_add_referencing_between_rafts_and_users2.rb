class AddReferencingBetweenRaftsAndUsers2 < ActiveRecord::Migration
  def change
  	add_foreign_key :rafts, :users
  end
end
