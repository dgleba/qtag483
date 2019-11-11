class TblQualityIssue < ApplicationRecord
  
  # we can specify prefix, no need when using with 'dbo.' 
  # self.table_name_prefix = 'dbo.' 
  # specify table name if it breaks Rails conventions
  self.table_name  = 'TBLQualityIssues'
  # specify primary key name if it's other than id
  # self.primary_key = 'id_virtual_channel'
  #default_scope { order('date_time DESC') }
  #default_scope ->{ order('date_time DESC') }

  has_one_attached :picture01
  has_one_attached :picture02
  has_many_attached :documents

  def picture01_url
    if self.picture01.attached?
      Rails.application.routes.url_helpers.rails_blob_path(self.picture01, only_path: true)
    else
      nil
    end
  end

  def picture02_url
    if self.picture02.attached?
      Rails.application.routes.url_helpers.rails_blob_path(self.picture02, only_path: true)
    else
      nil
    end
  end

  def documents0_url
    if self.documents.attached?
      Rails.application.routes.url_helpers.rails_blob_path(self.documents[0], only_path: true)
    else
      nil
    end
  end


  def documents_url
    j=0
    docs = []
    docu = []
    if self.documents.attached?
      self.documents.each_with_index do |document,i| 
        Rails.application.routes.url_helpers.rails_blob_path(documents[i], only_path: true)
        # documents += Rails.application.routes.url_helpers.rails_blob_path(documents[i], only_path: true)
        j = j + 1
      end
      # j.times do 
      #  docs += Rails.application.routes.url_helpers.rails_blob_path(self.documents[j], only_path: true)
      # end  
    else
      nil
    end
  end



  # Cast numbers to string so ransacker can search them like text

  # Cast the ID column to a string in mysql when searching with Ransack.
  # Allows searches with _cont and _eq predicates.  # From https://github.com/ernie/ransack/issues/224
  ransacker :id do
    Arel.sql("CAST(`ID` AS CHAR)")
  end  

  ransacker :date do
    Arel.sql("CAST(`Date` AS CHAR)")
  end  


end

