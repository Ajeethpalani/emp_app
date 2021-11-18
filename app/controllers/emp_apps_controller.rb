class EmpAppsController < ApplicationController
  before_action :set_emp_app, only: %i[ show edit update destroy ]

  # GET /emp_apps or /emp_apps.json
  def index
    @emp_apps = EmpApp.all
  end

  # GET /emp_apps/1 or /emp_apps/1.json
  def show
  end

  # GET /emp_apps/new
  def new
    @emp_app = EmpApp.new
  end

  # GET /emp_apps/1/edit
  def edit
  end

  # POST /emp_apps or /emp_apps.json
  def create
    @emp_app = EmpApp.new(emp_app_params)

    respond_to do |format|
      if @emp_app.save
        format.html { redirect_to @emp_app, notice: "Emp app was successfully created." }
        format.json { render :show, status: :created, location: @emp_app }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emp_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emp_apps/1 or /emp_apps/1.json
  def update
    respond_to do |format|
      if @emp_app.update(emp_app_params)
        format.html { redirect_to @emp_app, notice: "Emp app was successfully updated." }
        format.json { render :show, status: :ok, location: @emp_app }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emp_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emp_apps/1 or /emp_apps/1.json
  def destroy
    @emp_app.destroy
    respond_to do |format|
      format.html { redirect_to emp_apps_url, notice: "Emp app was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emp_app
      @emp_app = EmpApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emp_app_params
      params.require(:emp_app).permit(:name, :age, :gender, :designation)
    end
end
