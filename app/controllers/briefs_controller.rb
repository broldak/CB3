class BriefsController < ApplicationController
  before_action :set_brief, only: [:show, :edit, :update, :destroy]

  # GET /briefs
  # GET /briefs.json
  def index
    @briefs = Brief.all
  end

  # GET /briefs/1
  # GET /briefs/1.json
  def show
  end

  # GET /briefs/new
  def new
    @brief = Brief.new
  end

  # GET /briefs/1/edit
  def edit
  end

  # POST /briefs
  # POST /briefs.json
  def create
    @brief = Brief.new(brief_params)

    respond_to do |format|
      if @brief.save
        format.html { redirect_to @brief, notice: 'Brief was successfully created.' }
        format.json { render :show, status: :created, location: @brief }
      else
        format.html { render :new }
        format.json { render json: @brief.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /briefs/1
  # PATCH/PUT /briefs/1.json
  def update
    respond_to do |format|
      if @brief.update(brief_params)
        format.html { redirect_to @brief, notice: 'Brief was successfully updated.' }
        format.json { render :show, status: :ok, location: @brief }
      else
        format.html { render :edit }
        format.json { render json: @brief.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /briefs/1
  # DELETE /briefs/1.json
  def destroy
    @brief.destroy
    respond_to do |format|
      format.html { redirect_to briefs_url, notice: 'Brief was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brief
      @brief = Brief.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brief_params
      params.require(:brief).permit(:title)
    end
end
