require "discogs"
require "pry"

class VideosController < ApplicationController
  def search
    wrapper = Discogs::Wrapper.new("music search", user_token: "OLOYyBwmpfSDUfWyRGKBRNdRMKVQvKRphmmipHuL")
    results = wrapper.search(params[:query])
    # binding.pry
    resource_id = results[:results][1][:id]
    @release_title = results[:results][1][:title]
    @thumbnail = results[:results][1][:thumb]
    @video_url = wrapper.get_release(resource_id)[:videos][0][:uri]
    render :index
  end
end
