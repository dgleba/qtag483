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

end
