class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  TAGCATS = ['hot', 'medium', 'cold']


  def index
    @tags = Tag.all
    @tag_categories = TagCategory.all

  end

  def show
  end

  def new
    @tag = Tag.new
    @tag_categories = TagCategory.all
  end

  def edit
    @tag_categories = TagCategory.all

  end

  def create
    @tag = Tag.new(tag_params)
    @tag_categories = TagCategory.all

    respond_to do |format|
      if @tag.save
        format.html { redirect_to root_path, notice: "'#{@tag.name}' tag was succsefully created."  }
        format.json { render :show, status: :created, location: @tag }
      else
        format.html { render :new }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tag.update(tag_params)
        format.html { redirect_to root_path, notice: "'#{@tag.name}' tag was succsefully updated." }
        format.json { render :show, status: :ok, location: @tag }
      else
        format.html { render :edit }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tag.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: "'#{@tag.name}' tag was succsefully deleted." }
      format.json { head :no_content }
    end
  end

  private
    def set_tag
      @tag = Tag.find(params[:id])
    end

    def tag_params
      params.require(:tag).permit(:name, :spec, :tag_category_id)
    end
end
