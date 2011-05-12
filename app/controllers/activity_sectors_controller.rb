class ActivitySectorsController < ApplicationController

  active_scaffold :activity_sectors do |config|
    config.list.columns = :activity_sector_name
    config.columns.exclude :entities
  end

end
