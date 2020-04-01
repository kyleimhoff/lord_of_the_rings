
        require 'rubygems'
        require 'httparty'
        class Books
          attr_accessor :books

          include HTTParty
          def get_titles
            document = HTTParty.get('https://the-one-api.herokuapp.com/v1/book')["docs"]
            @books = document.map {|t| t["name"]}
          end
        end