require "streamio-ffmpeg"
class AudiosController < ApplicationController
  def create
    system("youtube-dl -x --audio-format mp3 #{params[:url]}")
  end

  def show
    @audio = Audio.find(params[:id])
  end
end
