class CreateTicketCategories < ActiveRecord::Migration
  def change
    create_table :ticket_categories do |t|
      t.string :name
      t.string :slug
      t.text   :description

      t.timestamps null: false
    end
    add_index :ticket_categories, :slug
  end
end
