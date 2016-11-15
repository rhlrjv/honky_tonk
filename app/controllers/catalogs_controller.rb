class CatalogsController < ApplicationController
  before_action :set_catalog, only: [:show, :edit, :update, :destroy]

  # GET /catalogs
  # GET /catalogs.json
  def index
    @catalogs = Catalog.all
  end

  # GET /catalogs/1
  # GET /catalogs/1.json
  def show
  end

  # GET /catalogs/new
  def new
    @catalog = Catalog.new
  end

  # GET /catalogs/1/edit
  def edit
  end

  def create
    run Catalog::Create do |catalog|
      return redirect_to catalog.model, notice: 'Catalog was successfully created.'
    end
    render :new
  end

  def update
    run Catalog::Update do |catalog|
      return redirect_to catalog.model, notice: 'Catalog was successfully updated.'
    end
    render :edit
  end

  def destroy
    run Catalog::Delete do
      return redirect_to catalogs_url, notice: 'Catalog was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalog
      @catalog = Catalog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalog_params
      params.require(:catalog).permit(:sku, :name, :description)
    end
end
