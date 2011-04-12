class PhonesController < ApplicationController

  active_scaffold :phones do |config|
    config.columns = [:fix, :fax, :cell]
  end

end
