json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :year, :synopsis
  json.url movie_url(movie, format: :json)
end
