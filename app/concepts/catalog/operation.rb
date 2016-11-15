class Catalog < ApplicationRecord
  class Create < Trailblazer::Operation

    include Model
    model Catalog, :create

    contract do
      property :sku
      property :name
      property :description
    end

    def process(params)
      validate(params[:catalog]) do |c|
        c.save
      end
    end
  end
end