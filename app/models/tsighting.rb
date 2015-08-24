class Tsighting < ActiveRecord::Base
	validates :x_coord, presence: true
	validates :y_coord, presence: true
	validates_length_of :x_coord, :minimum => 6, :maximum => 6, :numericality => true
	validates_length_of :y_coord, :minimum => 6, :maximum => 6, :numericality => true
	validates :date, presence: true
	#validates :your_name, presence: true
	validates :contact_info, presence: true
	validates :river, presence: true
	validates :no_of_minks, presence: true
	validates :status, presence: true
  	validates :reported_by, presence: true

  	has_attached_file :image, :styles => { :small => "150x150>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

	validates_attachment_presence :image
	validates_attachment_size :image, :less_than => 5.megabytes
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/jpg']

  	#following allows for either contact code or your name to be blank
  	validate :any_present?

	def any_present?
	  if %w(your_name contact_code).all?{|attr| self[attr].blank?}
	    errors.add :base, "Either Your name or Contact code has to be filled in"
	  end
	end
end
