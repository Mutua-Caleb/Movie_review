json.extract! movie, :id, :title, :description, :movie_length, :rating, :director, :created_at, :updated_at
json.url movie_url(movie, format: :json)
