json.array!(@ticket_items) do |ticket_item|
  json.extract! ticket_item, :id, :user_id, :title, :description
  json.url ticket_item_url(ticket_item, format: :json)
end
