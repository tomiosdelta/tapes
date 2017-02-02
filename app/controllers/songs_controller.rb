class SongsController < ApplicationController

  before_action :find_tape

  def index
    @songs = @tape.songs.all
  end

  def show
  end

  def edit
  end

  def new
    @song = Song.new({:tape_id => @tape.id, :title => 'Default'}) 
    @tapes = Tape.all  
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to(:controller => 'songs', :action => 'index', :tape_id => params[:song][:tape_id])
  end

  def delete
  end

private

  def find_tape
    if params[:tape_id]
      @tape = Tape.find(params[:tape_id])
    end
  end

  def song_params
      # same as using "params[:tape]", except that it:
      # - raises an error if :tape is not present
      # - allows listed attributes to be mass-assigned
      params.require(:song).permit(:tape_id, :title, :artist, :duration, :album, :year)
    end

end
