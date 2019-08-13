require "streamio-ffmpeg"

class AudiosController < ApplicationController
  def index
    @audios = Audio.all
  end

  def new
    movie = FFMPEG::Movie.new("/Users/cpearce2/Development/code/Mod2/audiorip/app/assets/images/screen.mov")
    @audio = movie.transcode("audio_extract.mp3", :ab => 128)
  end

  def create
    # @audio = Audio.new(params['title'], params['artist'], params['url'])
    # movie = YoutubeDL.download "https://www.youtube.com/watch?v=gvdf5n-zI14", output: 'some_file.mp4'
    # @audio = movie.transcode( "audio_extract.mp3", :ab => 128 )
    system("youtube-dl -x --audio-format mp3 #{params[url]}")
  end

  def show
    @audio = Audio.find(params[:id])
  end
end
