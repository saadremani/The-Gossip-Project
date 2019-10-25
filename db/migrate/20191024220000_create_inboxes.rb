class CreateInboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :inboxes do |t|

			t.belongs_to :private_message, index: true
			t.belongs_to :recipient, index: true

      t.timestamps
    end
  end
end
