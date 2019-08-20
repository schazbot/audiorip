require "discogs"
require "pry"

class VideosController < ApplicationController
  def search
    wrapper = Discogs::Wrapper.new("music search", user_token: "OLOYyBwmpfSDUfWyRGKBRNdRMKVQvKRphmmipHuL")
    results = wrapper.search(params[:query])
    release_id = results.values[1][0][:"id"]
    @release_title = results.values[1][0][:"title"]

    

    render :index
  end
end
