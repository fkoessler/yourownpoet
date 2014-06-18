class Api::VersesController < ApplicationController
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
    #@verse = Verse.find(params[:id])
    respond_with @verse
    #if @verse.present?
    #  respond_with @verse
    #else
    #  respond_with(nothing: true, status: :not_found)
    #end
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
      #format.html { redirect_to @verse, notice: 'Verse was successfully created.' }
      #format.json { render :show, status: :created, location: @verse }
    else
      #format.html { render :new }
      #format.json { render json: @verse.errors, status: :unprocessable_entity }
      respond_with :api, @verse.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /api/verses/1
  # PATCH/PUT /api/verses/1.json
  def update
    respond_to do |format|
      if @verse.update(verse_params)
        #format.html { redirect_to @verse, notice: 'Verse was successfully updated.' }
        #format.json { render :show, status: :ok, location: @verse }
        respond_with(@verse, status: :ok)
      else
        #format.html { render :edit }
        #format.json { render json: @verse.errors, status: :unprocessable_entity }
        respond_with(@verse.errors, status: :unprocessable_entity)
      end
    end
  end

  # DELETE /api/verses/1
  # DELETE /api/verses/1.json
  def destroy
    @verse.destroy
    #respond_to do |format|
    #  format.html { redirect_to verses_url, notice: 'Verse was successfully destroyed.' }
    #  format.json { head :no_content }
    #end
    respond_with(head :no_content)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verse
      @verse = Verse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verse_params
      params.require(:verse).permit(:line_one)
    end
end