class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show 
        @song = Song.find_by(params[:id])
    end

    def create
        @song = Song.new(song_params)
        binding.pry
        @song.save 
        redirect_to song_url   
    end

    def search
        wrapper = Discogs::Wrapper.new("music search", user_token: "OLOYyBwmpfSDUfWyRGKBRNdRMKVQvKRphmmipHuL")
        results = wrapper.search(params[:query])
        resource_id = results[:results][1][:id]
            @release_artist = results[:results][1][:title].split(" - ")[0]
            @release_title = results[:results][1][:title].split(" - ")[1]
            @thumbnail = results[:results][1][:thumb]
            @video_url = wrapper.get_release(resource_id)[:videos][0][:uri]
        render :new
    end


    private 

    def song_params
        params.require(:song).permit(:title, :artist, :video_url, :thumbnail)
    end

end
