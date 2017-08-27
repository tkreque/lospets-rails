class PetTagsController < ApplicationController
  before_action :set_pet_tag, only: [:show, :edit, :update, :destroy]

  # GET /pet_tags
  # GET /pet_tags.json
  def index
    @pet_tags = PetTag.all
  end

  # GET /pet_tags/1
  # GET /pet_tags/1.json
  def show
    @pet_tag = PetTag.find(params[:id_pet])
  end

  # GET /pet_tags/new
  def new
    @pet_tag = PetTag.new
  end

  # GET /pet_tags/1/edit
  def edit
  end

  # POST /pet_tags
  # POST /pet_tags.json
  def create
    @pet_tag = PetTag.new(pet_tag_params)

    respond_to do |format|
      if @pet_tag.save
        format.html { redirect_to @pet_tag, notice: 'Pet tag was successfully created.' }
        format.json { render :show, status: :created, location: @pet_tag }
      else
        format.html { render :new }
        format.json { render json: @pet_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_tags/1
  # PATCH/PUT /pet_tags/1.json
  def update
    respond_to do |format|
      if @pet_tag.update(pet_tag_params)
        format.html { redirect_to @pet_tag, notice: 'Pet tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_tag }
      else
        format.html { render :edit }
        format.json { render json: @pet_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_tags/1
  # DELETE /pet_tags/1.json
  def destroy
    @pet_tag.destroy
    respond_to do |format|
      format.html { redirect_to pet_tags_url, notice: 'Pet tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_tag
      @pet_tag = PetTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_tag_params
      params.require(:pet_tag).permit(:id_pet, :id_tag)
    end
end
