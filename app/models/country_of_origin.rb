class CountryOfOrigin < ApplicationRecord

    has_one_attached :avatar
    has_many_attached :documents
  
  def avatar_url
    if self.avatar.attached?
      Rails.application.routes.url_helpers.rails_blob_path(self.avatar, only_path: true)
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
  
  def documents91_url
    if self.documents.attached?
      self.documents.each do |doc|
        Rails.application.routes.url_helpers.rails_blob_path(self.documents[doc], only_path: true)
      end
    else
      nil
    end
  end

  def documents_url
    if self.documents.attached?
      self.documents.each do |adoc|
        Rails.application.routes.url_helpers.rails_blob_path(adoc, disposition: "attachment", only_path: true)
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

# notes
# undefined method `signed_id' for #<ActiveStorage::Attached::Many:0x00007fa6b5599d50>


end


