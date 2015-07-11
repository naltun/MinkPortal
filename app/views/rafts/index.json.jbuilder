json.array!(@rafts) do |raft|
  json.extract! raft, :id, :x_cord, :y_cord, :river, :catchment, :start_date, :raft_code, :raft_or_tunnel, :status_change_date, :raft_status, :contact_code, :organisation, :landowner_contact_code, :dispatcher_contact_code, :access_notes, :comments, :created_by
  json.url raft_url(raft, format: :json)
end
