class Catalog < ApplicationRecord
  class Show < Trailblazer::Operation
    include Model
    model Catalog, :find
  end
end