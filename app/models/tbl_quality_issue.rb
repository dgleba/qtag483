class TblQualityIssue < ApplicationRecord
  
  # we can specify prefix, no need when using with 'dbo.' 
  # self.table_name_prefix = 'dbo.' 
  # specify table name if it breaks Rails conventions
  self.table_name  = 'TBLQualityIssues'
  # specify primary key name if it's other than id
  # self.primary_key = 'id_virtual_channel'
  #default_scope { order('date_time DESC') }
  #default_scope ->{ order('date_time DESC') }

end
