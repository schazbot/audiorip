require "discogs"
require "pry"

class VideosController < ApplicationController
  def search
    wrapper = Discogs::Wrapper.new("music search", user_token: "OLOYyBwmpfSDUfWyRGKBRNdRMKVQvKRphmmipHuL")
    results = wrapper.search(params[:query])
    #  @results = []
    #  results.values[1].each { |result| @results << result }
     first_result = results.values[1][0]
     
     
     # release_id = results.values[1][0][:"id"]
     # release_title = results.values[1][0][:"title"]
     # release = wrapper.get_release(release_id)
     
     resource_id = results[:results][1][:id]
     
    #  binding.pry
    # resource_link = wrapper.search(params[:query])[:results][0][:resource_url]
    @video_url = wrapper.get_release(resource_id)[:videos][0][:uri]
    
    

    render :index
  end
end
