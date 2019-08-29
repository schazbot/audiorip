class UserSongsController < ApplicationController

    # def index
        
    #     @user_songs = UserSong.find_by(user_id: params[current_user.id])
    # end

    # def show
    #     @user_song = UserSong.find_by(params[:id])
    # end

    def create
        @user_song = UserSong.create(user_id: params[current_user.id], song_id: params[:song_id]
    end

end
