class Audio < ApplicationRecord
  
    def initialize(title, artist, url)
        @title = title
        @artist = artist
        @url = url    
    end

end
