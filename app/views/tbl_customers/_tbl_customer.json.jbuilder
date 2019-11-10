json.extract! tbl_customer, :id, :CustName, :CustLocation, :Current
json.url tbl_customer_url(tbl_customer, format: :json)
