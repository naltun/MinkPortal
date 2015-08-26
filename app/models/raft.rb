class Raft < ActiveRecord::Base
	belongs_to :user
	validates :x_coord, presence: true
	validates :y_coord, presence: true
    validates_length_of :y_coord, :minimum => 6, :maximum => 6, :numericality => true
    validates_length_of :y_coord, :minimum => 6, :maximum => 6, :numericality => true
    validates :river, presence: true
    validates :catchment, presence: true
    validates :start_date, presence: true
    validates :raft_code, presence: true
    validates_uniqueness_of :raft_code
    validates :raft_or_tunnel, presence: true
    validates :status_change_date, presence: true
    validates :raft_status, presence: true
    validates :contact_code, presence: true
    validates :coordinating_org, presence: true
    validates :dispatcher_contact_code, presence: true
   # validates :user_id, presence: true 

end
