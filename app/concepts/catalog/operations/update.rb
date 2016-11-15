class Catalog < ApplicationRecord
  class Update < Catalog::Create
    action :update
  end
end