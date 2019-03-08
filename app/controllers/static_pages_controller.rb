class StaticPagesController < ApplicationController
  def index
    require 'net/http'

    url = 'https://smashbros-clark-ngo.herokuapp.com/posts.json'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    @obj = JSON.parse(response)
  end

end
