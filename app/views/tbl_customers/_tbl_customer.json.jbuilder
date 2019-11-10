json.extract! tbl_customer, :id, :CustName, :CustLocation, :Current, :created_at, :updated_at
json.url tbl_customer_url(tbl_customer, format: :json)
