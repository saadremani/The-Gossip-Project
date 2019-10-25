class User < ApplicationRecord

	has_many :gossips
	has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"

	has_many :inboxes
	has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage", through: :inboxes

	
	belongs_to :city
	
end
