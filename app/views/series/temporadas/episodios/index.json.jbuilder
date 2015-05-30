json.array!(@episodios) do |episodio|
  json.extract! episodio, :id, :title
  json.url episodio_url(episodio, format: :json)
end
