class BicyclesController < ApplicationController
  before_action :set_bicycle, only: [:show, :edit, :update, :destroy, :set_tags]

  # GET /bicycles
  # GET /bicycles.json
  def index
    @bicycles = Bicycle.all
    @tag_categories = TagCategory.all
    @tags = Tag.all

  end

  # GET /bicycles/1
  # GET /bicycles/1.json
  def show
    @bicycle = Bicycle.find(params[:id])
    @tags = Tag.where ""
    @tags = Tag.all.to_a - @bicycle.tags.to_a
    # @tags = @bicycle.tags.to_a - Tag.all.to_a 

  end

  # GET /bicycles/new
  def new
    @bicycle = Bicycle.new
  end

  # GET /bicycles/1/edit
  def edit
  end

  # POST /bicycles
  # POST /bicycles.json
  def create
    @bicycle = Bicycle.new(bicycle_params)

    respond_to do |format|
      if @bicycle.save
        format.html { redirect_to root_path, notice: "'#{@bicycle.make}' bike was succsefully created." }
        # format.json { render :show, status: :created, location: @bicycle }
      else
        format.html { render :new }
        format.json { render json: @bicycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicycles/1
  # PATCH/PUT /bicycles/1.json
  def update
    respond_to do |format|
      if @bicycle.update(bicycle_params)
        format.html { redirect_to @bicycle, notice: "'#{@bicycle.make}' bike was succsefully updated."  }
        format.json { render :show, status: :ok, location: @bicycle }
      else
        format.html { render :edit }
        format.json { render json: @bicycle.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_tags
    logger.debug "TAG PARAMS: #{tag_params}"
    @bicycle.set_tags tag_params[:tags][:ids] if tag_params.present?
    redirect_to @bicycle
  end
  # DELETE /bicycles/1
  # DELETE /bicycles/1.json
  def destroy
    @bicycle.destroy
    respond_to do |format|
      format.html { redirect_to bicycles_url, notice: "'#{@bicycle.make}' bike was succsefully deleted."  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicycle
      @bicycle = Bicycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bicycle_params
      params.require(:bicycle).permit(:make, :model)
    end

    def tag_params
      params.permit(tags: {ids: []})
    end
end
