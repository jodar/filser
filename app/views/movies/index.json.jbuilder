json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :year, :description, :status, :rating
  json.url movie_url(movie, format: :json)
end
