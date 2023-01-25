                               class StudiumRubiesController < ApplicationController
  before_action :set_studium_ruby, only: %i[ show edit update destroy ]

  # GET /studium_rubies or /studium_rubies.json
  def index
    @studium_rubies = StudiumRuby.all
  end

  # GET /studium_rubies/1 or /studium_rubies/1.json
  def show
  end

  # GET /studium_rubies/new
  def new
    @studium_ruby = StudiumRuby.new
  end

  # GET /studium_rubies/1/edit
  def edit
  end

  # POST /studium_rubies or /studium_rubies.json
  def create
    @studium_ruby = StudiumRuby.new(studium_ruby_params)

    respond_to do |format|
      if @studium_ruby.save
        format.html { redirect_to studium_ruby_url(@studium_ruby), notice: "Studium ruby was successfully created." }
        format.json { render :show, status: :created, location: @studium_ruby }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studium_ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studium_rubies/1 or /studium_rubies/1.json
  def update
    respond_to do |format|
      if @studium_ruby.update(studium_ruby_params)
        format.html { redirect_to studium_ruby_url(@studium_ruby), notice: "Studium ruby was successfully updated." }
        format.json { render :show, status: :ok, location: @studium_ruby }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studium_ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studium_rubies/1 or /studium_rubies/1.json
  def destroy
    @studium_ruby.destroy

    respond_to do |format|
      format.html { redirect_to studium_rubies_url, notice: "Studium ruby was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studium_ruby
      @studium_ruby = StudiumRuby.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studium_ruby_params
      params.require(:studium_ruby).permit(:First_name, :Last_Name, :Email, :Phone, :Instagram)
    end
end
