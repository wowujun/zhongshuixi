json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :title, :local, :content
  json.url advertisement_url(advertisement, format: :json)
end
