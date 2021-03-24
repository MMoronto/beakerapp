class HairstylesController < ApplicationController
  before_action :set_hairstyle, only: %i[ show edit update destroy ]

  # GET /hairstyles or /hairstyles.json
  def index
    @hairstyles = Hairstyle.all
  end

  # GET /hairstyles/1 or /hairstyles/1.json
  def show
  end

  # GET /hairstyles/new
  def new
    @hairstyle = Hairstyle.new
  end

  # GET /hairstyles/1/edit
  def edit
  end

  # POST /hairstyles or /hairstyles.json
  def create
    # @hairstyle = Hairstyle.new(hairstyle_params)
    new_hairstyle = @user.hairstyle.build(hairstyle_params)

    respond_to do |format|
      if @hairstyle.save
        format.html { redirect_to @hairstyle, notice: "Hairstyle was successfully created." }
        format.json { render :show, status: :created, location: @hairstyle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hairstyle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hairstyles/1 or /hairstyles/1.json
  def update
    respond_to do |format|
      if @hairstyle.update(hairstyle_params)
        format.html { redirect_to @hairstyle, notice: "Hairstyle was successfully updated." }
        format.json { render :show, status: :ok, location: @hairstyle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hairstyle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hairstyles/1 or /hairstyles/1.json
  def destroy
    @hairstyle.destroy
    respond_to do |format|
      format.html { redirect_to hairstyles_url, notice: "Hairstyle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hairstyle
      @hairstyle = Hairstyle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hairstyle_params
      params.require(:hairstyle).permit(:style, :user_id, :image_url, :price, :salon_adress, :duration, :rating)
    end
end
