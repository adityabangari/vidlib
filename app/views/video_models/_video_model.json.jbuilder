json.extract! video_model, :id, :adult, :backdrop_path, :belongs_to_collection, :budget, :homepage, :id, :imdb_id, :original_language, :original_title, :overview, :popularity, :poster_path, :release_date, :revenue, :runtime, :status, :tagline, :video, :vote_average, :vote_count, :created_at, :updated_at
json.url video_model_url(video_model, format: :json)
