class Catalog::Cell::Form < ::Cell::Concept
  inherit_views Catalog::Cell

  include ActionView::RecordIdentifier

  def show
    render :form
  end

  private

  property :contract
end
