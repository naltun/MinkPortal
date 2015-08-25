class AddPaperclipToTsightings < ActiveRecord::Migration
  def change
  	add_attachment :tsightings, :image  
  end
end
