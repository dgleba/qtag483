class TblQualityIssue < ApplicationRecord
  
  # we can specify prefix, no need when using with 'dbo.' 
  # self.table_name_prefix = 'dbo.' 
  # specify table name if it breaks Rails conventions
  self.table_name  = 'TBLQualityIssues'
  # specify primary key name if it's other than id
  # self.primary_key = 'id_virtual_channel'
  #default_scope { order('date_time DESC') }
  #default_scope ->{ order('date_time DESC') }


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

