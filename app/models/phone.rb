class Phone < ActiveRecord::Base

  belongs_to :phonable, :polymorphic => true


  def to_label
    str = ""
    str << "#{fix}" unless fix.blank?
    str << " (fax #{fax})" unless fax.blank?
    str << " / #{cell}" unless cell.blank?
    return str
  end
end
