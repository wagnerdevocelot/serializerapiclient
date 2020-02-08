class CoursesController < ApplicationController

    require 'rest_client'

    API_BASE_URL = "https://serializerapi.herokuapp.com"

    def index
        uri = "#{API_BASE_URL}/courses.json"
        rest_resource = RestClient::Resource.new(uri)
        courses = rest_resource.get
        @courses = JSON.parse(courses, :symbolize_names => true)
    end

end
