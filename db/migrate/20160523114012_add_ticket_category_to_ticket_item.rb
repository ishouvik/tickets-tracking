class AddTicketCategoryToTicketItem < ActiveRecord::Migration
  def change
    add_column :ticket_items, :category_id, :integer
    add_index  :ticket_items, :category_id
  end
end
