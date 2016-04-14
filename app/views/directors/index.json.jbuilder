json.array!(@directors) do |director|
  json.extract! director, :id, :first_name, :last_name, :birthday
  json.url director_url(director, format: :json)
end
