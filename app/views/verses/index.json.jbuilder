json.array!(@verses) do |verse|
  json.extract! verse, :id, :line_one
  json.url api_verse_url(verse, format: :json)
end
