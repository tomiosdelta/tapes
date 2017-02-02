class TapesController < ApplicationController

  # def diff_from_average(duration)
  #   return duration - Tape.average(:duration)
  # end
  # helper_method :diff_from_average

  def index
    @tapes = Tape.all
  end

  def show
    @tape = Tape.find(params[:id])
    @button_label = "Return to tapes list"
  end

  def new
    @tape = Tape.new
    @button_label = "Create this new tape"
  end

  def create
    @tape = Tape.new(tape_params)
    @tape.save
    redirect_to(:controller => 'tapes', :action => 'index')
  end

  def edit
    @tape = Tape.find(params[:id])
    @button_label = "Submit changes of tape info"
  end

  def update
    @tape = Tape.find(params[:id])
    if @tape.update_attributes(tape_params)
      @message = "Updated OK"
    else
      @message = "Problem occured. Try again"
    end
    
  end

  def delete
  end

  private

    def tape_params
      # same as using "params[:tape]", except that it:
      # - raises an error if :tape is not present
      # - allows listed attributes to be mass-assigned
      params.require(:tape).permit(:name, :duration, :make, :material, :created_at)
    end

end
