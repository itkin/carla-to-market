module EntitiesHelper

  def website_column(record)
    link_to(record.website, record.website, :target => '_blank') unless record.website.blank?
  end
  def name_column(record)
    raw(link_to "#", :class=> "toggle-entity-children", :id => "toogle-children-#{record.id}" do
      content_tag(:span, "", :class => 'ui-icon ui-icon-triangle-1-e') + record.name.to_s + (record.children.blank? ? '' : " (#{record.children.size})")
    end)
  end
  def name_show_column(record)
    record.name
  end
  def comment_column(record)
    raw record.comment
  end
  def comment_show_column(record)
    comment_column(record)
  end
  def financial_data_column(record)
    record.nb_employees
  end
  def actions_column(record)
    total = record.actions.count
    if total != 0
      str = ""
      str << "#{total}"
      on_going = record.actions.on_going.count
      if on_going != 0
        if total != on_going
          str << " dont #{on_going} en cours"
        else
          str << " en cours"
        end
      end
    else
      "-"
    end

  end
  def parent_show_column(record)
    record.parent.to_label if record.parent
  end
end
