class ProductFisicalsController < ApplicationController
  before_action :set_product_fisical, only: %i[ show edit update destroy ]

  # GET /product_fisicals or /product_fisicals.json
  def index
    @product_fisicals = ProductFisical.all
  end

  # GET /product_fisicals/1 or /product_fisicals/1.json
  def show
  end

  # GET /product_fisicals/new
  def new
    @product_fisical = ProductFisical.new
  end

  # GET /product_fisicals/1/edit
  def edit
  end

  # POST /product_fisicals or /product_fisicals.json
  def create
    @product_fisical = ProductFisical.new(product_fisical_params)

    respond_to do |format|
      if @product_fisical.save
        format.html { redirect_to @product_fisical, notice: "Product fisical was successfully created." }
        format.json { render :show, status: :created, location: @product_fisical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_fisical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_fisicals/1 or /product_fisicals/1.json
  def update
    respond_to do |format|
      if @product_fisical.update(product_fisical_params)
        format.html { redirect_to @product_fisical, notice: "Product fisical was successfully updated." }
        format.json { render :show, status: :ok, location: @product_fisical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_fisical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_fisicals/1 or /product_fisicals/1.json
  def destroy
    @product_fisical.destroy
    respond_to do |format|
      format.html { redirect_to product_fisicals_url, notice: "Product fisical was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_fisical
      @product_fisical = ProductFisical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_fisical_params
      params.require(:product_fisical).permit(:name, :size, :description, :stock, :price, :sku)
    end
end
