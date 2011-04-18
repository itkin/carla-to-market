module AttachmentsHelper

  def binary_file_name_column(record)
    link_to record.binary_file_name, record.binary.url, :target => '_blank'
  end
  def binary_file_name_show_column(record)
    binary_file_name_column(record)
  end
end
