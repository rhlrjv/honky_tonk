require 'reform/form/validation/unique_validator.rb'
class Catalog < ApplicationRecord
  class Create < Trailblazer::Operation

    include Model
    model Catalog, :create

    contract do
      property :sku
      property :name
      property :description

      # validates :sku, presence: true
      validates :sku, unique: true
      validates :name, presence: true
    end

    def process(params)
      validate(params[:catalog]) do |c|
        c.save
      end
    end
  end
end