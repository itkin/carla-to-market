class AddressesController < ApplicationController

  active_scaffold :addresses do |config|
    config.columns = [:street, :zip_code, :city]
  end
end
