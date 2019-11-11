class Pfeature < ApplicationRecord
has_many :product_feature
   has_many :product, through: :product_feature
   
   # set kaminari page size - number of records per page for this model..
   paginates_per 1000

   # works..
  # mysql only syntax ..
  ransacker :id do
    Arel.sql("CAST(`id` AS CHAR)")
  end 

end
