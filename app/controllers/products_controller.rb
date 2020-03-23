class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    
    response = scrape(params[:product][:url])
    byebug
    @product = Product.new(params[response])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def scrape(link)
    url = link
    response = ProductSpider.process(url)
    if response[:status] == :completed && response[:error].nil?
      flash[:notice] = "Successfully scraped url"
    else
      flash[:alert] = response[:error]
    end
  rescue StandardError => e
    flash[:alert] = "Error: #{e}"
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require[:product].permit(:url)
    end
end
