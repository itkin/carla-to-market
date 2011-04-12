class EntitiesController < ApplicationController

  active_scaffold :entities do |config|
    record_select :per_page => 20, :search_on => [:name], :order_by => 'name'

    config.list.columns = [:name, :website, :comment, :actions]
    config.create.columns = config.update.columns = [:parent_id, :name, :registration_number, :website, :comment, :address, :phone]
    config.show.columns = [:parent, :name, :registration_number, :website, :comment, :address, :phone]

    config.nested.add_link(:contacts)
    config.nested.add_link(:financial_data)
    config.nested.add_scoped_link(:children)


  end

  protected

  # If nested let active_scaffold manage everything
  # if not just show all root nodes
  def beginning_of_chain
    nested? ? super : active_scaffold_config.model.roots
  end

  # Assign parent node to just created node
  def after_create_save(record)
    if (nested? && nested.scope)
      parent = nested_parent_record(:read)
      record.send("#{nested.scope}").send(:<<, parent) unless parent.nil?
    end
  end

end
