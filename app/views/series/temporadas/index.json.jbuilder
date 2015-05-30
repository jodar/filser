json.array!(@temporadas) do |temporada|
  json.extract! temporada, :id, :title, :year
  json.url temporada_url(temporada, format: :json)
end
