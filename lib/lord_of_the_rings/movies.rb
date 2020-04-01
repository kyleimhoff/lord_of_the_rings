require 'rubygems'
      require 'httparty'

      class Movies
        attr_accessor :movies
        include HTTParty

        def get_movies
          document = HTTParty.get('https://the-one-api.herokuapp.com/v1/movie', headers:{ "Authorization" => "Bearer fZgj1-yqZTwutG3EKVBc" })["docs"]
          @movies = document.map {|t| t["name"]}
        end
        end