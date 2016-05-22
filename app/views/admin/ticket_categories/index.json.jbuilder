json.array!(@ticket_categories) do |ticket_category|
  json.extract! ticket_category, :id, :name, :slug, :description
  json.url ticket_category_url(ticket_category, format: :json)
end
