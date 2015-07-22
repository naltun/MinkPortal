class AddReferencingBetweenRaftsAndUsers < ActiveRecord::Migration
  def change
  	add_reference :rafts, :user, index: true
  	
  end
end
