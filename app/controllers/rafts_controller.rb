class RaftsController < ApplicationController
  before_action :set_raft, only: [:show, :edit, :update, :destroy]

  # GET /rafts
  # GET /rafts.json
  def index
    @rafts = Raft.all
  end

  # GET /rafts/1
  # GET /rafts/1.json
  def show
  end

  # GET /rafts/new
  def new
    @raft = Raft.new
  end

  # GET /rafts/1/edit
  def edit
  end

  # POST /rafts
  # POST /rafts.json
  def create
    @raft = Raft.new(raft_params)

    respond_to do |format|
      if @raft.save
        format.html { redirect_to @raft, notice: 'Raft was successfully created.' }
        format.json { render :show, status: :created, location: @raft }
      else
        format.html { render :new }
        format.json { render json: @raft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rafts/1
  # PATCH/PUT /rafts/1.json
  def update
    respond_to do |format|
      if @raft.update(raft_params)
        format.html { redirect_to @raft, notice: 'Raft was successfully updated.' }
        format.json { render :show, status: :ok, location: @raft }
      else
        format.html { render :edit }
        format.json { render json: @raft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rafts/1
  # DELETE /rafts/1.json
  def destroy
    @raft.destroy
    respond_to do |format|
      format.html { redirect_to rafts_url, notice: 'Raft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raft
      @raft = Raft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raft_params
      params.require(:raft).permit(:x_cord, :y_cord, :river, :catchment, :start_date, :raft_code, :raft_or_tunnel, :status_change_date, :raft_status, :contact_code, :organisation, :landowner_contact_code, :dispatcher_contact_code, :access_notes, :comments, :created_by)
    end
end