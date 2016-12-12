ENV["FOOD2FORK_KEY"] = '3277a6134116b489bb8b2e32e307d1fa'
ENV["FOOD2FORK_SERVER_AND_PORT"] = 'www.food2fork.com'

class Recipe
    include HTTParty
    key_value = ENV['FOOD2FORK_KEY']
    hostport = ENV['FOOD2FORK_SERVER_AND_PORT']
    base_uri "http://#{hostport}/api"
    default_params key: key_value
    format :json

    def self.for term
      get("", query: {q: term})["recipes"]
    end

end
