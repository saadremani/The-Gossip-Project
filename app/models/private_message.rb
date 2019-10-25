class PrivateMessage < ApplicationRecord

	has_many :inboxes
	has_many :recipients, class_name: "User", through: :inboxes

	belongs_to :sender, class_name: "User"

end
