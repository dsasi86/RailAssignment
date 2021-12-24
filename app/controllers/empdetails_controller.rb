class EmpdetailsController < ApplicationController
  before_action :set_empdetail, only: %i[ show edit update destroy ]

  # GET /empdetails or /empdetails.json
  def index
    @empdetails = Empdetail.all
  end

  # GET /empdetails/1 or /empdetails/1.json
  def show
  end

  # GET /empdetails/new
  def new
    @empdetail = Empdetail.new
  end

  # GET /empdetails/1/edit
  def edit
  end

  # POST /empdetails or /empdetails.json
  def create
    @empdetail = Empdetail.new(empdetail_params)

    respond_to do |format|
      if @empdetail.save
        format.html { redirect_to empdetail_url(@empdetail), notice: "Empdetail was successfully created." }
        format.json { render :show, status: :created, location: @empdetail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @empdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empdetails/1 or /empdetails/1.json
  def update
    respond_to do |format|
      if @empdetail.update(empdetail_params)
        format.html { redirect_to empdetail_url(@empdetail), notice: "Empdetail was successfully updated." }
        format.json { render :show, status: :ok, location: @empdetail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @empdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empdetails/1 or /empdetails/1.json
  def destroy
    @empdetail.destroy

    respond_to do |format|
      format.html { redirect_to empdetails_url, notice: "Empdetail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empdetail
      @empdetail = Empdetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def empdetail_params
      params.require(:empdetail).permit(:Name, :Age, :Gender, :Designation, :contact_number, :decimal, :address)
    end
end
