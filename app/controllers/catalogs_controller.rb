class CatalogsController < ApplicationController
  before_action :set_catalog, only: [:show, :edit]

  def new
    @catalog = Catalog.new
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
      @catalog = present(Catalog::Show).model
    end
end
