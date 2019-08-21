class UserSongsController < ApplicationController

    def index
        @user_songs = UserSong.all
    end

    def show
        @user_song = UserSong.find_by(params[:id])
    end

end
