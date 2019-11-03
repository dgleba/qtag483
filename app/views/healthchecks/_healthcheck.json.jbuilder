json.extract! healthcheck, :id, :name, :ip_address, :username, :user_id, :comment, :active_status, :sort_order, :created_at, :updated_at
json.url healthcheck_url(healthcheck, format: :json)
