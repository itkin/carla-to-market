class EntitiesController < ApplicationController

  active_scaffold :entities do |config|
    record_select :per_page => 20, :search_on => [:name], :order_by => 'name'

    config.columns << [:financial_data_year, :turnover, :ebe, :profit, :nb_employees]
    config.list.columns = [:name, :turnover, :website, :comment, :actions]
    config.create.columns = config.update.columns = [:tags, :parent_id, :name, :website, :registration_number, :registered_on, :comment, :financial_data, :address, :phone, :attachments]
    config.show.columns = [:tags, :parent, :name, :website, :registration_number, :registered_on, :comment, :financial_data_year, :turnover, :ebe, :profit, :nb_employees, :address, :phone, :attachments]

    config.columns[:attachments].allow_add_existing = false

    config.columns[:tags].form_ui = :select

    config.columns[:ebe].options[:format] = config.columns[:turnover].options[:format] = :currency
    config.columns[:profit].options[:format] = :percentage

    config.columns[:turnover].includes = [:financial_data, :tags]
    config.columns[:turnover].sort_by :sql => "financial_data.turnover"

    config.nested.add_link(:contacts)
    config.nested.add_scoped_link(:children)

    config.columns[:turnover].set_link :show
    config.columns[:comment].set_link :edit

  end

  def conditions_for_collection

    { :tags => { :id => params[:tag_ids]}} unless params[:tag_ids].blank?
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
