json.extract! machine, :id, :DeptID, :MachineDesc, :PlantID, :Stamp
#, :created_at, :updated_at
json.url machine_url(machine, format: :json)
