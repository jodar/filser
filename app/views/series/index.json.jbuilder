json.array!(@series) do |series|
  json.extract! series, :id, :title, :season, :episodes, :status, :description
  json.url series_url(series, format: :json)
end
