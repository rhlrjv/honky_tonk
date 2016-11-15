class Catalog < ApplicationRecord
  class Delete < Trailblazer::Operation

    include Model
    model Catalog, :find
    # NOTE: the model command is to find/create the model

    def process(params)
      model.destroy
    end
  end
end