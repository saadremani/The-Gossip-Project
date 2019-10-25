class Gossip < ApplicationRecord
	
	has_many :linktags
	has_many :tags, through: :linktags

	belongs_to :user

end
