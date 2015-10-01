class RaftChecksController < ApplicationController
  before_action :set_raft_check, only: [:show, :edit, :update, :destroy]

  # GET /raft_checks
  # GET /raft_checks.json
  def index
    @raft_checks = RaftCheck.all
  end

  # GET /raft_checks/1
  # GET /raft_checks/1.json
  def show
  end

  # GET /raft_checks/new
  def new
    @raft_check = RaftCheck.new
  end

  # GET /raft_checks/1/edit
  def edit
  end

  # POST /raft_checks
  # POST /raft_checks.json
  def create
    @raft_check = RaftCheck.new(raft_check_params)

    respond_to do |format|
      if @raft_check.save
        format.html { redirect_to @raft_check, notice: 'Raft check was successfully created.' }
        format.json { render :show, status: :created, location: @raft_check }
      else
        format.html { render :new }
        format.json { render json: @raft_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raft_checks/1
  # PATCH/PUT /raft_checks/1.json
  def update
    respond_to do |format|
      if @raft_check.update(raft_check_params)
        format.html { redirect_to @raft_check, notice: 'Raft check was successfully updated.' }
        format.json { render :show, status: :ok, location: @raft_check }
      else
        format.html { render :edit }
        format.json { render json: @raft_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raft_checks/1
  # DELETE /raft_checks/1.json
  def destroy
    @raft_check.destroy
    respond_to do |format|
      format.html { redirect_to raft_checks_url, notice: 'Raft check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raft_check
      @raft_check = RaftCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raft_check_params
      params.require(:raft_check).permit(:contact_code, :raft_code, :date, :any_species, :mink, :mink_scat, :bird, :cat, :hedgehog, :mouse, :otter, :pine_marten, :rat, :squirrel, :stoat, :water_vole, :weasel, :unidentif, :comments)
    end
end
