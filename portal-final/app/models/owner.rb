class Owner < ActiveRecord::Base
	belongs_to :users
	belongs_to :ipassets
		validates   :user_id, :ipasset_id, :OwnerStakepercentage, :presence => true
	validates   :IIITBstakepercent, :numericality => { :greater_than => 20, :less_than_or_equal_to => 100}, :presence => true
end

