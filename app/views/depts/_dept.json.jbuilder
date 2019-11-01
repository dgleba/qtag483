json.extract! dept, :id, :Department, :DepartmentState
#, :created_at, :updated_at
json.url dept_url(dept, format: :json)
