class ProductKindsController < ApplicationController
  before_action :set_product_kind, only: [:show, :edit, :update, :destroy]

  # GET /product_kinds
  # GET /product_kinds.json
  def index
    @product_kinds = ProductKind.all
  end

  # GET /product_kinds/1
  # GET /product_kinds/1.json
  def show
  end

  # GET /product_kinds/new
  def new
    @product_kind = ProductKind.new
  end

  # GET /product_kinds/1/edit
  def edit
  end

  # POST /product_kinds
  # POST /product_kinds.json
  def create
    @product_kind = ProductKind.new(product_kind_params)

    respond_to do |format|
      if @product_kind.save
        format.html { redirect_to @product_kind, notice: 'Product kind was successfully created.' }
        format.json { render :show, status: :created, location: @product_kind }
      else
        format.html { render :new }
        format.json { render json: @product_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_kinds/1
  # PATCH/PUT /product_kinds/1.json
  def update
    respond_to do |format|
      if @product_kind.update(product_kind_params)
        format.html { redirect_to @product_kind, notice: 'Product kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_kind }
      else
        format.html { render :edit }
        format.json { render json: @product_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_kinds/1
  # DELETE /product_kinds/1.json
  def destroy
    @product_kind.destroy
    respond_to do |format|
      format.html { redirect_to product_kinds_url, notice: 'Product kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_kind
      @product_kind = ProductKind.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_kind_params
      params.require(:product_kind).permit(:name, :description)
    end
end
