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
  
  def documents_url
    if self.documents.attached?
      self.documents.each do |doc|
        Rails.application.routes.url_helpers.rails_blob_path(self.documents[doc], only_path: true)
      end
    else
      nil
    end
  end

end
