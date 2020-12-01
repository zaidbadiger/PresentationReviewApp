class PresentsController < ApplicationController
  before_action :set_present, only: [:show, :edit, :update, :destroy]

  # GET /presents
  # GET /presents.json
  def index
    @presents = Present.all
  end

  # GET /presents/1
  # GET /presents/1.json
  def show
  end

  # GET /presents/new
  def new
    @present = Present.new
  end

  # GET /presents/1/edit
  def edit
  end

  # POST /presents
  # POST /presents.json
  def create
    @present = Present.new(present_params)

    respond_to do |format|
      if @present.save
        format.html { redirect_to @present, notice: 'Present was successfully created.' }
        format.json { render :show, status: :created, location: @present }
      else
        format.html { render :new }
        format.json { render json: @present.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presents/1
  # PATCH/PUT /presents/1.json
  def update
    respond_to do |format|
      if @present.update(present_params)
        format.html { redirect_to @present, notice: 'Present was successfully updated.' }
        format.json { render :show, status: :ok, location: @present }
      else
        format.html { render :edit }
        format.json { render json: @present.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presents/1
  # DELETE /presents/1.json
  def destroy
    @present.destroy
    respond_to do |format|
      format.html { redirect_to presents_url, notice: 'Present was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_present
      @present = Present.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def present_params
      params.require(:present).permit(:user_id, :presentation_id)
    end
end
