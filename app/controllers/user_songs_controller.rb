class UserSongsController < ApplicationController

    def index
        @user_songs = UserSong.all
    end

    def show
        @user_song = UserSong.find_by(params[:id])
    end

    def create
        @user_song = UserSong.create(user_song_params)
    end

    private 

    def user_song_params
        params.require(:user_song).permit(:user_id, :song_id)
    end

end
