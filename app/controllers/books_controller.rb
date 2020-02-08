class BooksController < ApplicationController

    require 'rest_client'

    API_BASE_URL = "https://serializerapi.herokuapp.com"

    def index
        uri = "#{API_BASE_URL}/books.json"
        rest_resource = RestClient::Resource.new(uri)
        books = rest_resource.get
        @books = JSON.parse(books, :symbolize_names => true)
    end



end