class CreatePrivateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :private_messages do |t|

			t.string :title
			t.text :content

			t.belongs_to :sender, index: true

      t.timestamps
    end
  end
end
