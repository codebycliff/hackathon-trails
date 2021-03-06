class PathsController < ApplicationController
  before_action :set_trail
  before_action :set_path, only: [:show, :edit, :update, :destroy]

  # GET /paths
  # GET /paths.json
  def index
    @paths = @trail.paths
  end

  # GET /paths/1
  # GET /paths/1.json
  def show
  end

  # GET /paths/new
  def new
    @path = @trail.paths.new
  end

  # GET /paths/1/edit
  def edit
  end

  # POST /paths
  # POST /paths.json
  def create
    @path = @trail.paths.new(path_params)

    respond_to do |format|
      if @path.save
        format.html { redirect_to edit_trail_path(@trail), notice: 'Path was successfully created.' }
        format.json { render :show, status: :created, location: @path }
      else
        format.html { render :new }
        format.json { render json: @path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paths/1
  # PATCH/PUT /paths/1.json
  def update
    respond_to do |format|
      if @path.update(path_params)
        format.html { redirect_to edit_trail_path(@trail), notice: 'Path was successfully updated.' }
        format.json { render :show, status: :ok, location: @path }
      else
        format.html { render :edit }
        format.json { render json: @path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paths/1
  # DELETE /paths/1.json
  def destroy
    @path.destroy
    respond_to do |format|
      format.html { redirect_to edit_trail_path(@trail), notice: 'Path was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_path
    @path = Path.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def path_params
    params.require(:path).permit(:duration, :direction, :trail_id)
  end

  def set_trail
    @trail = Trail.find(params[:trail_id])
  end
end
