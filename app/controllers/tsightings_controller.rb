class TsightingsController < ApplicationController
  #before_action :set_tsighting, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  helper_method :sort_column, :sort_direction

  # GET /tsightings
  # GET /tsightings.json
  def index
    @tsightings = Tsighting.order(sort_column + " " + sort_direction)
    # respond_to do |format|
    # format.html
    # format.json { render json: ProductsDatatable.new(view_context) }
  #end
  end

  # GET /tsightings/1
  # GET /tsightings/1.json
  def show
  end

  # GET /tsightings/new
  def new
    @tsighting = Tsighting.new
  end

  # GET /tsightings/1/edit
  def edit
  end

  # POST /tsightings
  # POST /tsightings.json
  def create
    @tsighting = Tsighting.new(tsighting_params)

    respond_to do |format|
      if @tsighting.save
        format.html { redirect_to @tsighting, notice: 'Sighting was successfully created.' }
        format.json { render :show, status: :created, location: @tsighting }
      else
        format.html { render :new }
        format.json { render json: @tsighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tsightings/1
  # PATCH/PUT /tsightings/1.json
  def update
    respond_to do |format|
      if @tsighting.update(tsighting_params)
        format.html { redirect_to @tsighting, notice: 'Sighting was successfully updated.' }
        format.json { render :show, status: :ok, location: @tsighting }
      else
        format.html { render :edit }
        format.json { render json: @tsighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tsightings/1
  # DELETE /tsightings/1.json
  def destroy
    @tsighting.destroy
    respond_to do |format|
      format.html { redirect_to tsightings_url, notice: 'Sighting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_tsighting
     # @tsighting = Tsighting.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tsighting_params
      params.require(:tsighting).permit(:x_coord, :y_coord, :sort, :date, :your_name, :contact_info, :contact_code, :reported_by, :reported_to, :catchment, :river, :no_of_mink, :status, :follow_up, :comments, :image)
    end

    def sort_column
      Tsighting.column_names.include?(params[:sort]) ? params[:sort] : "date"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
