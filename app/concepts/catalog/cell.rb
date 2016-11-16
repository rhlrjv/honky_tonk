class Catalog::Cell < Cell::Concept
  property :sku
  property :name
  property :description

  def show
    render
  end

  private

  class Listing < Cell::Concept
    def show
      catalogs = Catalog.all
      concept("catalog/cell", collection: catalogs, last: catalogs.last)
    end
  end
end