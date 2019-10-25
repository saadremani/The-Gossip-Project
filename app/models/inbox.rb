class Inbox < ApplicationRecord

	belongs_to :recipient, class_name: "User"
	belongs_to :private_message

	has_many :received_messages, through: :inboxes, source: :private_message

end
