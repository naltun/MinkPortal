class User < ActiveRecord::Base
	has_many :rafts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   ROLES = %w[admin ft volunteer scientist]
   
    def role_symbols
    	[role.to_sym]
    end      
end
 