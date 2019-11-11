class TblQualityIssue < ApplicationRecord
  
  # we can specify prefix, no need when using with 'dbo.' 
  # self.table_name_prefix = 'dbo.' 
  # specify table name if it breaks Rails conventions
  self.table_name  = 'TBLQualityIssues'
  # specify primary key name if it's other than id
  # self.primary_key = 'id_virtual_channel'
  #default_scope { order('date_time DESC') }
  #default_scope ->{ order('date_time DESC') }
  #default_scope { order({begin_date: :desc}, :name) }

  default_scope { order({Date: :desc}, :PartID) }

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

  def documents9_url
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

  # https://stackoverflow.com/questions/52046957/rails-undefined-method-signed-id-for-activestorageattachedmanycasualid
  # <% @sostituzione.allegati.each do |allegato| %>
  # <div class="level">
  #   <%= link_to 'Scarica documento allegato', rails_blob_path(allegato, only_path: true), class: 'button is-primary is-big' %>
  # </div>
  # <% end %>

  def documents_url
    if self.documents.attached?
      self.documents.each do |allegato|
        Rails.application.routes.url_helpers.rails_blob_path(allegato, only_path: true)
      end  
    else
      nil
    end
  end


  # https://stackoverflow.com/questions/50473730/rails-5-2-api-activestorage-how-to-get-url-paths-for-multi-image
  # activestorage api-only has_many_attached download many attachments
  def documenturls91
    return unless object.documents.attachments
    document_urls = object.documents.map do |adoc| 
      URI.join(
        ActionController::Base.asset_host, 
        rails_blob_path(adoc))
    end
  end

  def documenturls
    if self.documents.attached?
      document_urls = self.documents.map do |adoc| 
          Rails.application.routes.url_helpers.rails_blob_path(adoc, disposition: "attachment", only_path: true)
      end 
    else
      nil
    end    
  end

  # get document remvoe/delete urls..
  def documentremove
    if self.documents.attached?
      document_urls = self.documents.map do |adoc| 
          Rails.application.routes.url_helpers.delete_document_attachment_tbl_quality_issue_url(adoc, only_path: true)
      end 
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

