class InstrumentsController < ApplicationController

  before_action :find_song

  def index
    @instruments = @song.instruments.all
  end

  def show
  end

  def edit
  end

  def new
    @instrument = Instrument.new({:song_id => @song.id, :name => "XXXXXXX"})
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.save
    redirect_to(:controller => 'songs', :action => 'index', :tape_id => @song.tape_id)
  end

  def delete
  end

  private

    def find_song
      if params[:song_id]
        @song = Song.find(params[:song_id])
      end
    end

  def instrument_params
      # same as using "params[:instrument]", except that it:
      # - raises an error if :instrument is not present
      # - allows listed attributes to be mass-assigned
      params.require(:instrument).permit(:song_id, :name, :manufacturer, :material, :origin_country, :quality)
    end
end
