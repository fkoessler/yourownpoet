class Api::VersesController < ApplicationController
  
  protect_from_forgery with: :null_session
  before_action :set_verse, only: [:show, :edit, :update, :destroy]
  respond_to :json

  # GET /api/verses
  # GET /api/verses.json
  def index
    respond_with(@verses = Verse.all)
  end

  # GET /api/verses/1
  # GET /api/verses/1.json
  def show
    respond_with @verse
  end

  # GET /api/verses/new
  #def new
    #@verse = Verse.new
  #end

  # GET /api/verses/1/edit
  #def edit
  #end

  # POST /api/verses
  # POST /api/verses.json
  def create
    @verse = Verse.new(verse_params)

    if @verse.save
      respond_with :api, @verse, status: :created
    else
      respond_with :api, @verse, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /api/verses/1
  # PATCH/PUT /api/verses/1.json
  def update
    @verse.update(verse_params)
    respond_with(@verse)
  end

  # DELETE /api/verses/1
  # DELETE /api/verses/1.json
  def destroy
    @verse.destroy
    head :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verse
      @verse = Verse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verse_params
      params.require(:verse).permit(:line_one, :line_two, :line_three, :line_four, :line_five, :active, :sex)
    end
end