class CreateTicketItems < ActiveRecord::Migration
  def change
    create_table :ticket_items do |t|
      t.references :user, index: true, foreign_key: true
      t.string     :title
      t.text       :description

      t.timestamps null: false
    end
  end
end
