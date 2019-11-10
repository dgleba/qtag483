class Pfeature < ApplicationRecord
has_many :product_feature
   has_many :product, through: :product_feature

  # works..
  # mysql only syntax ..
  ransacker :id do
    Arel.sql("CAST(`id` AS CHAR)")
  end 

end
