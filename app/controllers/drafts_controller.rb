class DraftsController < ApplicationController
  def index
    @drafts = Draft.public_drafts
  end

	def new
	  @draft = Draft.new
	end

  def create
    @draft = Draft.new(params[:draft])
    @commissioner = Commissioner.new(params[:commissioner])
    @room = Room.new(params[:room])

    if @draft.valid? and @commissioner.valid? and @room.valid?
      @draft = Draft.create(params[:draft])
      @draft.create_commissioner(params[:commissioner])
      @draft.create_room(params[:room])
      
      flash[:success] = "Your draft was saved!"
      redirect_to drafts_path
    else
      flash[:error] = "Your draft could not be saved"
      render 'new'
    end
  end
end
