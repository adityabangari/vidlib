

class VideoModel < ApplicationRecord
include HTTParty



validates :backdrop_path, :presence => true, :uniqueness => true

validates :imdb_id, :presence => true, :uniqueness => true

validates :original_language, :presence => true

validates :original_title, :presence => true, :uniqueness => true

validates :overview, :presence => true, :uniqueness => true

validates :popularity, :presence => true

validates :poster_path, :presence => true, :uniqueness => true

validates :release_date, :presence => true

validates :vote_average, :presence => true

validates :vote_count, :presence => true
end
