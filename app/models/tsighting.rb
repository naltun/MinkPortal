class Tsighting < ActiveRecord::Base
	validates :x_coord, presence: true
	validates :y_coord, presence: true
	validates :date, presence: true
	validates :your_name, presence: true
	validates :contact_info, presence: true
	validates :river, presence: true
	validates :no_of_minks, presence: true
	validates :status, presence: true
end
